package fr.formation.inti.controller;

import java.security.Principal;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Map;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import fr.formation.inti.model.Employee;
import fr.formation.inti.service.EmployeeService;

@Controller
public class MainController {

	@Autowired
	private EmployeeService empServ;
	
	
	private Map<Integer, Employee> emps = null;

	@Autowired
	@Qualifier("employeeValidator")
	private Validator validator;

	@InitBinder
	private void initBinderTrad(WebDataBinder binder) {
		binder.setValidator(validator);
	}

	
	public MainController() {
		emps = new HashMap<Integer, Employee>();
	}
	

//	@RequestMapping("/changeLanguage")
//	public String changeLanguage(Locale locale, Model model) {
//	    localeResolver.setLocale(request, response, locale);
//	    return "redirect:/";
//	}
	
	@ModelAttribute("employee")
	public Employee createEmployeeModel() {
		// ModelAttribute value should be same as used in the empSave.jsp
		return new Employee();
	}
	
	
	
	/*AFFICHER LISTE*/

	@RequestMapping(value = "/listemp", method = RequestMethod.GET)
	public String lalistedesemployees(Model model) {
		model.addAttribute("employeelist", empServ.getAllEmployees());
		return "Employee";
	}
	
	/*FORMAT DATE*/
	@InitBinder
	public void initBinder(WebDataBinder webDataBinder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		webDataBinder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));
	}

	/*ADD EMPLOYEE*/
	@GetMapping(value = "/addemp")
	public String SaveEmployee(@ModelAttribute("employee") Employee employee) {
		
		return "addForm";
	}

	@PostMapping(value = "/save")
	public String SaveEmployeePost(@Validated @ModelAttribute("employee") Employee employee, BindingResult br) {
		
		ValidationUtils.rejectIfEmpty(br, "firstName", "firstName.required");
		ValidationUtils.rejectIfEmpty(br, "lastName", "lastName.required");
		ValidationUtils.rejectIfEmpty(br, "title", "title.required");
		ValidationUtils.rejectIfEmpty(br, "startDate", "startDate.required");
		
		if (br.hasErrors()) {
			return "addForm";
		}
		System.out.println(employee);
		employee.setStartDate(new GregorianCalendar().getTime());
		empServ.save(employee);
		return "redirect:/listemp";

	}
	

	/*EDITER EMPLOYEE*/
	
	
	@RequestMapping(value = "/editemp", method = RequestMethod.GET )
	public String editEmployee(@RequestParam("empId") Integer id, Employee employee, Model model) {		
		Optional<Employee> e = empServ.findById(id);
		model.addAttribute("employee", e.get());
		System.out.println(e);
		return "editForm";
	}
	
	@PostMapping (value = "/editemp")
	public String editEmployeePost( @ModelAttribute("employee") Employee employee) {		
			Employee e = employee;
			//System.out.println(e);
			empServ.save(e);	
		return "redirect:/listemp";
		
	}
	

	/*SUPPRIMER EMPLOYEE*/

	@GetMapping(value="/delete")
	public String deleteEmployee(@RequestParam("id") Integer empId, Model model) {
		if(empId !=null)
			empServ.deleteById(empId);
		return "redirect:/listemp";
		
	}
	
	
	//////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	@RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
	public String welcomePage(Model model) {
		model.addAttribute("title", "Welcome");
		model.addAttribute("message", "This is welcome page!");
		return "welcomePage";
	}

	@RequestMapping(value = "/admin", method = RequestMethod.GET)
	public String adminPage(Model model) {
		return "adminPage";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage(Model model) {

		return "loginPage";
	}

	@RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
	public String logoutSuccessfulPage(Model model) {
		model.addAttribute("title", "Logout");
		return "logoutSuccessfulPage";
	}

	@RequestMapping(value = "/userInfo", method = RequestMethod.GET)
	public String userInfo(Model model, Principal principal) {

		// After user login successfully.
		String Username = principal.getName();

		System.out.println("User Name: " + Username);

		return "userInfoPage";
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accessDenied(Model model, Principal principal) {

		if (principal != null) {
			model.addAttribute("message",
					"Hi " + principal.getName() + "<br> You do not have permission to access this page!");
		} else {
			model.addAttribute("msg", "You do not have permission to access this page!");
		}
		return "403Page";
	}
}

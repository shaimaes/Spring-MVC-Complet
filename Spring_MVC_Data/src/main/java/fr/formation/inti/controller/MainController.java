package fr.formation.inti.controller;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import fr.formation.inti.model.Employee;
import fr.formation.inti.service.EmployeeService;

@Controller
public class MainController {
	
	@Autowired
	private EmployeeService empServ;
	
	
	@RequestMapping(value="/listemp", method = RequestMethod.GET)
	public String lalistedesemployees(Model model) {
		model.addAttribute("employeelist", empServ.getAllEmployees());	
	    return "Employee";
	}

	@RequestMapping("/addemp")
	public String AddNewEmployee(Model model) {
	    return "addForm";
	}
	
//	 @RequestMapping(value = "/save", method = RequestMethod.POST)
//	    public String addEmployee(@ModelAttribute("employee") Employee employee) {
//	        empServ.addEmployee(employee);
//	        return "redirect:/employees";
//	    }
	
	/*
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute("employee") Employee employee) {
	    empServ.save(employee);
	    return "redirect:/listemp";
	}
*/

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

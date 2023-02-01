package fr.formation.inti.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import fr.formation.inti.model.Employee;

@Component
public class EmployeeValidator implements Validator{

	
	@Override
	public boolean supports(Class<?> paramClass) {
		return Employee.class.equals(paramClass);
	}

	@Override
	public void validate(Object obj, Errors errors) {
		/*MESSAGE ERRORS CHAMPS PARTIE 1*/
		
		ValidationUtils.rejectIfEmpty(errors, "firstName", "firstName.required");
		ValidationUtils.rejectIfEmpty(errors, "lastName", "lastName.required");
		ValidationUtils.rejectIfEmpty(errors, "title", "title.required");
		ValidationUtils.rejectIfEmpty(errors, "startDate", "startDate.required");
	}
}

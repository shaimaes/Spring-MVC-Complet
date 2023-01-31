package fr.formation.inti.service;

import java.util.List;
import java.util.Optional;

import fr.formation.inti.model.Employee;

public interface EmployeeService {
	
	
	List<Employee> getAllEmployees();

	Employee save(Employee employee);
	
	void deleteById(Integer id);
	
	Optional<Employee> findById(Integer id);
	
}

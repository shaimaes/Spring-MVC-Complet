package fr.formation.inti.dao;

import org.springframework.data.repository.CrudRepository;

import fr.formation.inti.model.Employee;


/*CRUD Repository permet de réaliser des méthodes
 * Cette interface permet de se délester des generic
 * DAO encombrantes grace a Spring Data*/

public interface EmployeeDao extends CrudRepository<Employee, Integer> {
	
}

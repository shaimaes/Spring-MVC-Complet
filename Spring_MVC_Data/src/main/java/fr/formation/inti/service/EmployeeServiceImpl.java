package fr.formation.inti.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.inti.dao.EmployeeDao;
import fr.formation.inti.model.Employee;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeDao empDao;

	@Override
	public List<Employee> getAllEmployees() {
		
		List<Employee> list = new ArrayList<Employee>();
		empDao.findAll().forEach(list::add);
		
		return list;
	}

	@Override
	@Transactional
	public Employee save(Employee employee) {
		return empDao.save(employee);
	}

	@Override
	public void deleteById(Integer id) {
		empDao.deleteById(id);
		
	}

	@Override
	public Optional<Employee> findById(Integer id) {
		return empDao.findById(id);
	}



		
}

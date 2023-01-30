package fr.formation.inti.service;

import java.util.List;

import fr.formation.inti.model.UserApp;

public interface UserService {
	
	UserApp findById(Integer id);

	List<UserApp> findAll();

	Integer save(UserApp c);

	void delete(UserApp entiy);

	void deleteById(Integer id);

	UserApp findUserBy(String email, String password);

	UserApp findByEmail(String email);

}

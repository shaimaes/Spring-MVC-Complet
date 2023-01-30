package fr.formation.inti.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import fr.formation.inti.model.UserApp;


public interface UserDao extends JpaRepository<UserApp, Integer> {
	
	UserApp findByEmailAndPassword(String email, String password);
	UserApp findByEmail(String email);

}

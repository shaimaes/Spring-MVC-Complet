package fr.formation.inti.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import fr.formation.inti.dao.UserDao;
import fr.formation.inti.model.UserApp;


@Service
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired
	UserDao dao;
	
	public UserServiceImpl() {
		
	}

	@Override
	public UserApp findById(Integer id) {
		//dao.beginTransaction();
		UserApp c = dao.findById(id).get();
		//dao.commit(true);
		return c;
	}

	@Override
	public List<UserApp> findAll() {
		//dao.beginTransaction();
		List<UserApp> list = dao.findAll();
		//dao.commit(true);
		return list;
	}

	@Override
	public Integer save(UserApp c) {
		//dao.beginTransaction();
		UserApp cust = dao.save(c);
		
		//dao.commit(true);
		return cust.getIdUser();
	}

	@Override
	public void delete(UserApp entiy) {
		//dao.beginTransaction();
		dao.delete(entiy);
		//dao.commit(true);
		
	}

	@Override
	public void deleteById(Integer id) {
		//dao.beginTransaction();
		dao.deleteById(id);
		//dao.commit(true);
		
	}

	@Override
	public UserApp findUserBy(String email, String password) {
		//dao.beginTransaction();
		UserApp user = dao.findByEmailAndPassword(email, password);
		//dao.commit(true);
		return user;
	}

	@Override
	public UserApp findByEmail(String email) {
		//dao.beginTransaction();
		//User user = dao.findByEmail(email);
		//dao.commit(true);
		return dao.findByEmail(email);
	}
	
}

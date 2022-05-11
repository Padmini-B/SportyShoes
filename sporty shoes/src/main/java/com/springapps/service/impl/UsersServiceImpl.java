package com.springapps.service.impl;

import java.util.List;

import com.springapps.dao.UsersDao;
import com.springapps.entity.Users;
import com.springapps.service.UsersService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class UsersServiceImpl implements UsersService{
	@Autowired
	private UsersDao usersDao;
	
	@Override
	@Transactional
	public int save(Users users) {
		return usersDao.create(users); 
	}
	
	@Override
	public List<Users> getUsers() {
		List<Users> users = usersDao.findUsers();
		return users;
	}

	@Override
	@Transactional
	public void delete(int id) {
		usersDao.delete(id);
	}
	
	@Override
	@Transactional
	public Users getUser(int id) {
		return usersDao.getUser(id);
	}

	@Override
	@Transactional
	public void update(Users users) {
		usersDao.update(users);
	}
}

package com.springapps.dao.impl;

import java.util.List;

import com.springapps.dao.ProductsDao;
import com.springapps.dao.UsersDao;
import com.springapps.entity.Products;
import com.springapps.entity.Users;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class UsersDaoImpl implements UsersDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public int create(Users users) {
		return (int) hibernateTemplate.save(users);
	}
	@Override
	public List<Users> findUsers() {
		return hibernateTemplate.loadAll(Users.class);
	}
	@Override
	public void delete(int id) {
		hibernateTemplate.delete(id);
	}
	@Override
	public Users getUser(int id) {
		return (Users) hibernateTemplate.get(Users.class,id);
	}
	@Override
	public void update(Users users) {
		hibernateTemplate.update(users);
	}
	
}
package com.springapps.dao;

import java.util.List;

import com.springapps.entity.Users;

public interface UsersDao {
	int create(Users users);
	void delete(int id);
	List<Users> findUsers();
	Users getUser(int id);
	void update(Users users);
}

package com.springapps.service;

import java.util.List;
import com.springapps.entity.Users;

public interface UsersService {
	int save(Users users);
	void delete(int id);
	List<Users> getUsers();
	Users getUser(int id);
	void update(Users user);
}

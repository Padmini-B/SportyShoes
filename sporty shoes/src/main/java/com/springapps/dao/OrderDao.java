package com.springapps.dao;

import java.util.List;

import com.springapps.entity.Order;


public interface OrderDao {
	int create(Order order);
	List<Order> findOrder();
	Order getOrder(int id);
	void delete(Order order);
}

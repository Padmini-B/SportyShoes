package com.springapps.service;

import java.util.List;
import com.springapps.entity.Order;

public interface OrderService {
	int save(Order order);

	List<Order> getOrder();
	Order getOrder(int id);

	void delete(Order order);
}

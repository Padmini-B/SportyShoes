package com.springapps.service.impl;

import java.util.List;
import com.springapps.dao.OrderDao;
import com.springapps.entity.Order;
import com.springapps.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class OrderServiceImpl implements OrderService{

	@Autowired
	private OrderDao orderDao;
	
	@Override
	@Transactional
	public int save(Order order) {
		return orderDao.create(order);
	}

	@Override
	public List<Order> getOrder() {
		List<Order> order = orderDao.findOrder();
		return order;
	}

	@Override
	@Transactional
	public Order getOrder(int id) {
		return orderDao.getOrder(id);
	}

	@Override
	@Transactional
	public void delete(Order order) {
		orderDao.delete(order);
	}
	
}

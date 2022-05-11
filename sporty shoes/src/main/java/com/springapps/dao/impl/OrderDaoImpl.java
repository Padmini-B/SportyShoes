package com.springapps.dao.impl;

import java.util.List;

import com.springapps.dao.OrderDao;
import com.springapps.entity.Cart;
import com.springapps.entity.Order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class OrderDaoImpl implements OrderDao{
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Override
	public int create(Order order) {
		return (int) hibernateTemplate.save(order);
	}

	@Override
	public List<Order> findOrder() {
		return hibernateTemplate.loadAll(Order.class);
	}

	@Override
	public Order getOrder(int id) {
		return (Order) hibernateTemplate.get(Order.class,id);
	}

	@Override
	public void delete(Order order) {
		hibernateTemplate.delete(order);
	}

}

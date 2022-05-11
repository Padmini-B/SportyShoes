package com.springapps.dao.impl;

import java.util.List;

import com.springapps.dao.CartDao;
import com.springapps.entity.Cart;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class CartDaoImpl implements CartDao{
	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public int create(Cart cart) {
		return (int) hibernateTemplate.save(cart);
	}
	@Override
	public List<Cart> findCart() {
		return hibernateTemplate.loadAll(Cart.class);
	}
	@Override
	public Cart getCart(int id) {
		return (Cart) hibernateTemplate.get(Cart.class,id);
	}
	@Override
	public void delete(Cart cartitem) {
		
		hibernateTemplate.delete(cartitem);
	}
}

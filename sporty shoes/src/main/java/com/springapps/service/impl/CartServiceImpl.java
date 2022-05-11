package com.springapps.service.impl;

import java.util.List;

import com.springapps.dao.CartDao;
import com.springapps.dao.ProductsDao;
import com.springapps.entity.Cart;
import com.springapps.service.CartService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CartServiceImpl implements CartService{
	@Autowired
	private CartDao cartDao;
	
	@Override
	@Transactional
	public int save(Cart cart) {
		return cartDao.create(cart); 
	}
	@Override
	public List<Cart> getCart() {
		List<Cart> cart = cartDao.findCart();
		return cart;
	}
	@Override
	@Transactional
	public Cart getCart(int id) {
		return cartDao.getCart(id);
	}
	@Override
	@Transactional
	public void delete(Cart cartitem) {
		cartDao.delete(cartitem);
	}
}

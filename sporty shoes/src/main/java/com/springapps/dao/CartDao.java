package com.springapps.dao;

import java.util.List;

import com.springapps.entity.Cart;

public interface CartDao {
	int create(Cart cart);
	List<Cart> findCart();
	Cart getCart(int id);
	void delete(Cart cartitem);
}

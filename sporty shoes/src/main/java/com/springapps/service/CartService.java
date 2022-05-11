package com.springapps.service;

import java.util.List;

import com.springapps.entity.Cart;

public interface CartService {
	int save(Cart cart);

	List<Cart> getCart();
	Cart getCart(int id);

	void delete(Cart cartitem);
}

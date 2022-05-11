package com.springapps.service;

import java.util.List;

import com.springapps.entity.Cart;
import com.springapps.entity.Products;
import com.springapps.entity.Users;

public interface ProductsService {

	int save(Products pb);

	List<Products> getProducts();
	Products getProduct(int id);
	void delete(Products product);
}

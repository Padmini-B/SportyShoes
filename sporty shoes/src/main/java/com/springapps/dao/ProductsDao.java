package com.springapps.dao;

import java.util.List;

import com.springapps.entity.Cart;
import com.springapps.entity.Products;
import com.springapps.entity.Users;

public interface ProductsDao {
	int create(Products pd);
	List<Products> findProducts();
	Products getProduct(int id);
	void delete(Products product);
}

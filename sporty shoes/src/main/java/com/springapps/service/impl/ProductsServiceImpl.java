package com.springapps.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

import com.springapps.dao.ProductsDao;
import com.springapps.entity.Cart;
import com.springapps.entity.Products;
import com.springapps.entity.Users;
import com.springapps.service.ProductsService;

@Service
public class ProductsServiceImpl implements ProductsService{

	@Autowired
	private ProductsDao productsDao;
	
	@Override
	@Transactional
	public int save(Products pb) {
		return productsDao.create(pb); 
	}
	@Override
	public List<Products> getProducts() {
		List<Products> pb = productsDao.findProducts();
		return pb;
	}
	@Override
	@Transactional
	public Products getProduct(int id) {
		return productsDao.getProduct(id);
	}
	@Override
	@Transactional
	public void delete(Products product) {
		productsDao.delete(product);
	}
}
package com.springapps.dao.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import java.util.List;

import com.springapps.dao.ProductsDao;
import com.springapps.entity.Products;
import com.springapps.entity.Users;

@Repository
public class ProductsDaoImpl implements ProductsDao{

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Override
	public int create(Products pb) {
		return (int) hibernateTemplate.save(pb);
	}
	@Override
	public List<Products> findProducts() {
		return hibernateTemplate.loadAll(Products.class);
	}
	@Override
	public Products getProduct(int id) {
		return (Products) hibernateTemplate.get(Products.class,id);
	}
	@Override
	public void delete(Products product) {
		hibernateTemplate.delete(product);
	}
}
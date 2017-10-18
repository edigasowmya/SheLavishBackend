package com.niit.DAO;

import java.util.List;

import com.niit.model.Product;

public interface ProductDao
{
	public boolean addProduct(Product product);
	public List<Product> retrieveProduct();
	public boolean deleteProduct(Product product);
	public Product getProduct(int proId);
	public boolean updateProduct(Product product);
}

package com.niit.DaoIMPL;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.DAO.ProductDao;
import com.niit.model.Product;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao
{
	@Autowired
	SessionFactory sessionFactory;

	public ProductDaoImpl(SessionFactory sessionFactory2) {
		// TODO Auto-generated constructor stub
	}

	@Transactional
	//@Override
	public boolean addProduct(Product product) 
	{
		try
		{
		sessionFactory.getCurrentSession().save(product);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	//@Override
	public List<Product> retrieveProduct() 
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from Product");
		List<Product> listProduct=query.list();
		session.close();
		return listProduct;
	}

	@Transactional
	//@Override
	public boolean deleteProduct(Product product) 
	{	
		try
		{
		sessionFactory.getCurrentSession().delete(product);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);	
		return false;
		}
	}

	//@Override
	public Product getProduct(int proId) 
	{
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class,proId);
		session.close();
		return product;
	}

	@Transactional
	//@Override
	public boolean updateProduct(Product product) 
	{
		try
		{
		(sessionFactory).getCurrentSession().saveOrUpdate(product);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}
	}

		
}

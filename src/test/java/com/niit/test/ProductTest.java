package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

//import org.hibernate.SessionFactory;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.DAO.ProductDao;
import com.niit.config.DBConfig;
import com.niit.DaoIMPL.ProductDaoImpl;
import com.niit.model.Product;


@Ignore
public class ProductTest 
{
	static ProductDao productDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com.niit");
		configApplnContext.refresh();
		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");
		
		productDao=(ProductDao)configApplnContext.getBean("productDao");
	}
	
	
	@Test
	public void addProductTest()
	{
		Product product=new Product();
		product.setProId(1003);
		product.setProName("Mobile");
		product.setProDesc("Mobile and its accesories");
		
		assertTrue(productDao.addProduct(product));
	}
	@Ignore
	
	@Test
	public void updateProductTest()
	{
		Product product=new Product();
		product.setProId(1002);
		product.setProName("JMShirt");
		product.setProDesc("John Miller Shirt with New Designs");
		
		assertTrue(productDao.updateProduct(product));
	}
	
	@Ignore
	@Test
	public void deleteProductTest()
	{
		Product product=new Product();
		product.setProId(1002);
		assertTrue(productDao.deleteProduct(product));
	}
	@Ignore
	@Test
	public void retrieveProductTest()
	{
		List<Product> listProduct=productDao.retrieveProduct();
		assertNotNull("Problem in Retriving ",listProduct);
		this.show(listProduct);
	}
	
	public void show(List<Product> listProduct)
	{
		for(Product product:listProduct)
		{
			System.out.println("Product ID:"+product.getProId());
			System.out.println("Product Name:"+product.getProName());
		}
	}
	
	
	@Test
	public void getProductTest()
	{
		Product product=productDao.getProduct(1003);
		assertNotNull("Problem in Getting:",product);
		System.out.println("Product ID:"+product.getProId());
		System.out.println("Product Name:"+product.getProName());
	}

}


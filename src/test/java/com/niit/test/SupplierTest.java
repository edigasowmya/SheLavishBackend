package com.niit.test;


import static org.junit.Assert.*;

import java.util.List;

//import org.hibernate.SessionFactory;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.DAO.SupplierDao;
import com.niit.model.Supplier;

@Ignore
public class SupplierTest
{
	static SupplierDao supplierDAO;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com.niit");
		configApplnContext.refresh();
		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");
		
		supplierDAO=(SupplierDao)configApplnContext.getBean("supplierDao");
	}
	
	@Ignore	
	@Test
	public void addSupplierTest()
	{
		Supplier supplier=new Supplier();
    	supplier.setSupId(1002);
		supplier.setSupName("Mobile");
		supplier.setSupDesc("Mobile and its accesories");
		System.out.println("Start saving supplier");
		assertTrue(supplierDAO.addSupplier(supplier));
	}
	
	
	@Test
	public void updateSupplierTest()
	{
		Supplier supplier =new Supplier();
		supplier.setSupId(1002);
		supplier.setSupName("JMShirt");
		supplier.setSupDesc("John Miller Shirt with New Designs");
		
		assertTrue(supplierDAO.updateSupplier(supplier));
				}
	
	@Ignore
	@Test
	public void deleteSupplierTest()
	{
		Supplier supplier=new Supplier();
		supplier.setSupId(1005);
		assertTrue(supplierDAO.deleteSupplier(supplier));

	}
	
	
	@Test
	public void retrieveSupplierTest()
	{
		List<Supplier> listSupplier=supplierDAO.retrieveSupplier();
		assertNotNull("Problem in Retriving ",listSupplier);
		this.show(listSupplier);
	}
	
	public void show(List<Supplier> listSupplier)
	{
		for(Supplier supplier:listSupplier)
		{
			System.out.println("Supplier ID:"+supplier.getSupId());
			System.out.println("Supplier Name:"+supplier.getSupName());
		}
	}
	
	@Ignore
	@Test
	public void getSupplierTest()
	{
		Supplier supplier=supplierDAO.getSupplier(1003);
		assertNotNull("Problem in Getting:",supplier);
		System.out.println("Supplier ID:"+supplier.getSupId());
		System.out.println("Supplier Name:"+supplier.getSupName());
	}

}



package com.niit.config;

import java.util.Properties;

import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.*;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.*;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.DAO.CategoryDao;
import com.niit.DAO.ProductDao;
import com.niit.DAO.SupplierDao;
import com.niit.DAO.UserDAO;
import com.niit.DaoIMPL.CategoryDaoImpl;
import com.niit.DaoIMPL.ProductDaoImpl;
import com.niit.DaoIMPL.SupplierDaoImpl;
import com.niit.DaoIMPL.UserDaoImpl;

@Configuration
@EnableTransactionManagement
@ComponentScan("com.niit")
public class DBConfig 
{

	 @Bean(name = "dataSource")
		public DataSource getDataSource() {
			DriverManagerDataSource dataSource = new DriverManagerDataSource();
			dataSource.setDriverClassName("org.h2.Driver");
			dataSource.setUrl("jdbc:h2:tcp://localhost/~/DT133");
			dataSource.setUsername("sowmya");
			dataSource.setPassword("sowmyagoud");
			System.out.println("Datasource");
			return dataSource;

		}

		private Properties getHibernateProperties() {
			Properties properties = new Properties();
			properties.put("hibernate.show_sql", "true");
			properties.put("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
		//	properties.put("hibernate.hbm2ddl.auto", "create");
			properties.put("hibernate.hbm2ddl.auto", "update");
			System.out.println("Hibernate Properties");
			return properties;

		}

		@Autowired
		@Bean(name = "sessionFactory")
		public SessionFactory getSessionFactory(DataSource dataSource) {
			LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
			sessionBuilder.addProperties(getHibernateProperties());
			sessionBuilder.scanPackages("com.niit");
			System.out.println("Session");
			
			return sessionBuilder.buildSessionFactory();
			
		}

		@Autowired
		@Bean(name = "transactionManager")
		public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) {
			HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
			System.out.println("Transaction");
			return transactionManager;
		}
	@Autowired
	@Bean(name = "userDAO")
	public UserDAO getUserDAO(SessionFactory sessionFactory) {
	    return new UserDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name = "productDAO")
	public ProductDao getProductDao(SessionFactory sessionFactory) {
	    return new ProductDaoImpl(sessionFactory);
	}
	
	
	@Autowired
	@Bean(name="categoryDAO")
	public CategoryDao getCategory(SessionFactory sessionFactory)
	{
		return new CategoryDaoImpl(sessionFactory);
		
	}
	
	@Autowired
	@Bean(name="supplierDAO")
	public SupplierDao getSupplier(SessionFactory sessionFactory)
	{
		return new SupplierDaoImpl(sessionFactory);
		
	}
}
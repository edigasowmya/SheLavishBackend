package com.niit.config;

import javax.sql.DataSource;
import java.util.Properties;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.dao.CartDao;
import com.niit.dao.UserDao;
import com.niit.dao.UserDao;
import com.niit.daoimpl.CartDaoImpl;
import com.niit.daoimpl.UserDaoImpl;
import com.niit.daoimpl.UserDaoImpl;




@Configuration
@EnableTransactionManagement
@ComponentScan("com.niit")
public class DBconfig 
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
	public UserDao getUserDAO(SessionFactory sessionFactory)
	{

		return new UserDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name = "cartDAO")
	public CartDao getCartDAO(SessionFactory sessionFactory)
	{

		return new CartDaoImpl(sessionFactory);
	}
	

	}

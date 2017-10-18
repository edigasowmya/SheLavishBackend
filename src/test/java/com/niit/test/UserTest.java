package com.niit.test;

import static org.junit.Assert.*;

import java.util.List;

//import org.hibernate.SessionFactory;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.DAO.UserDAO;
import com.niit.config.DBConfig;
import com.niit.DaoIMPL.UserDaoImpl;
import com.niit.model.User;

@Ignore
public class UserTest 
{
	static UserDAO userDao;
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext configApplnContext=new AnnotationConfigApplicationContext();
		configApplnContext.scan("com.niit");
		configApplnContext.refresh();
		
		//SessionFactory sessionFactory=(SessionFactory)configApplnContext.getBean("DBConfig.class");
		
		userDao=(UserDAO)configApplnContext.getBean("userDao");
	}
	
	
	@Test
	public void addUserTest()
	{
		User user=new User();
		user.setUseId(1003);
		user.setUseName("Mobile");
		user.setUseDesc("Mobile and its accesories");
		
		assertTrue(userDao.addUser(user));
	}
	
	@Ignore
	@Test
	public void updateUserTest()
	{
		User user=new User();
		user.setUseId(1002);
		user.setUseName("JMShirt");
		user.setUseDesc("John Miller Shirt with New Designs");
		
		assertTrue(userDao.updateUser(user));
	}
	
	@Ignore
	@Test
	public void deleteUserTest()
	{
		User user=new User();
		user.setUseId(1002);
		assertTrue(userDao.deleteUser(user));
	}
	
	@Ignore
	@Test
	public void retrieveUserTest()
	{
		List<User> listUser=userDao.retrieveUser();
		assertNotNull("Problem in Retriving ",listUser);
		this.show(listUser);
	}
	
	public void show(List<User> listUser)
	{
		for(User user:listUser)
		{
			System.out.println("User ID:"+user.getUseId());
			System.out.println("User Name:"+user.getUseName());
		}
	}
	
	
	@Test
	public void getUserTest()
	{
		User user=userDao.getUser(1003);
		assertNotNull("Problem in Getting:",user);
		System.out.println("user ID:"+user.getUseId());
		System.out.println("user Name:"+user.getUseName());
	}

}


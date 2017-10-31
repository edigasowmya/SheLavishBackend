/*package com.niit.test;
import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
//import org.junit.Ignore;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.annotation.ComponentScan;

import com.niit.config.DBconfig;
import com.niit.dao.UserDao;
import com.niit.model.User;

@ComponentScan("com.spring.model")

@Ignore
public class AppTest {


	private static final User user = null;
	@Autowired
	private static UserDao userDAO;
	

@SuppressWarnings("resource")
@BeforeClass
public static void initialize()
{
	AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
	context.scan("com.niit.*");
	context.register(DBconfig.class);
	context.refresh();
	
	//user = (User) context.getBean("user");
	userDAO = (UserDao) context.getBean("userDao");
}


@org.junit.Test
public void saveUser()
{
	boolean flag=userDAO.saveUser(user);
	assertEquals("createUser", true, flag);

}



}
*/
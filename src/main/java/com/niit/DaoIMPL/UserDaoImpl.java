package com.niit.DaoIMPL;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.DAO.UserDAO;
import com.niit.model.User;

@Repository("userDao")
public class UserDaoImpl implements UserDAO
{
	@Autowired
	SessionFactory sessionFactory;

	public UserDaoImpl(SessionFactory sessionFactory2) {
		// TODO Auto-generated constructor stub
	}

	@Transactional
	//@Override
	public boolean addUser(User user) 
	{
		try
		{
		sessionFactory.getCurrentSession().save(user);
		return true;
		}
		catch(Exception e)
		{
		return false;
		}
	}

	//@Override
	public List<User> retrieveUser() 
	{
		Session session=sessionFactory.openSession();
		Query query=session.createQuery("from User");
		List<User> listUser=query.list();
		session.close();
		return listUser;
	}

	@Transactional
	//@Override
	public boolean deleteUser(User user) 
	{	
		try
		{
		sessionFactory.getCurrentSession().delete(user);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);	
		return false;
		}
	}

	//@Override
	public User getUser(int useId) 
	{
		Session session=sessionFactory.openSession();
		User user=(User)session.get(User.class,useId);
		session.close();
		return user;
	}

	@Transactional
	//@Override
	public boolean updateUser(User user) 
	{
		try
		{
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		return true;
		}
		catch(Exception e)
		{
		System.out.println("Exception Arised:"+e);
		return false;
		}
	}

		
}

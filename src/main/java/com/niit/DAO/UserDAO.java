package com.niit.DAO;

import java.util.List;

import com.niit.model.User;

public interface UserDAO
{
	public boolean addUser(User user);
	public List<User> retrieveUser();
	public boolean deleteUser(User user);
	public User getUser(int useId);
	public boolean updateUser(User user);
}

package com.mvc.service;

import java.util.List;

import com.mvc.entity.User;

public interface UserService {

	
	

	public int createUser(User user);

	public List<User> getAllUser();

	public void deleteUser(int id);



	public User getUserById(int id);

	public void update(User user);

	public List<User> searchUsers(String searchTerm);

	
}

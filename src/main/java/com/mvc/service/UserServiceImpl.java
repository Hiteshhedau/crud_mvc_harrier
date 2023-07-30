package com.mvc.service;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Service;

import com.mvc.entity.User;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private HibernateTemplate hibernateTemplate;

	@Transactional
	public int createUser(User user) {
		int i = (int) hibernateTemplate.save(user);
		return i;
	}

	@Override
	public List<User> getAllUser() {
		// TODO Auto-generated method stub
		return hibernateTemplate.loadAll(User.class);
	}

	@Transactional
	@Override
	public void deleteUser(int id) {

		User user = hibernateTemplate.get(User.class, id);
		hibernateTemplate.delete(user);

	}

	@Override
	public User getUserById(int id) {
		User user = hibernateTemplate.get(User.class, id);
		return user;
	}

	@Override
	@Transactional
	public void update(User user) {
		hibernateTemplate.update(user);

	}

	@SuppressWarnings({ "deprecation", "unchecked" })
	@Override
	public List<User> searchUsers(String searchTerm) {
		// Define the HQL query to fetch users matching the search term
		String hql = "FROM User WHERE LOWER(firstName) LIKE :searchTerm OR LOWER(lastName) LIKE :searchTerm OR LOWER(email) LIKE :searchTerm";

		// Use HibernateTemplate to execute the query with named parameter
		return (List<User>) hibernateTemplate.findByNamedParam(hql, "searchTerm", "%" + searchTerm.toLowerCase() + "%");
	}

}

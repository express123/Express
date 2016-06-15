package com.zhbit.expresscompany.service.impl;


import java.util.List;

import com.zhbit.expresscompany.dao.UserDao;
import com.zhbit.expresscompany.domain.User;
import com.zhbit.expresscompany.service.UserSerive;

public class UserSeriveBean implements UserSerive {
	private UserDao userDao;
	
	public User add(User user) {
		// TODO Auto-generated method stub
		return userDao.save(user);
	}

	public void removeUser(String uid) {
		// TODO Auto-generated method stub
		User user=userDao.getUserByUid(uid);
		userDao.delete(user);
	}

	public User getUser(String uid) {
		// TODO Auto-generated method stub
		return userDao.getUserByUid(uid);
	}
    
	public List<User> getAllUser(){
		
		return userDao.query();
	}
	
	public User UpDate(User user){
		return userDao.update(user);
	}
	
	public UserDao getUserDao() {
		return userDao;
	}

	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}

}

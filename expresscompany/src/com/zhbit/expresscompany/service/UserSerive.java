package com.zhbit.expresscompany.service;

import java.util.List;

import com.zhbit.expresscompany.domain.User;

public interface UserSerive {
	User add(User user);
	void removeUser(String uid);
	User getUser(String uid);
	List<User> getAllUser();
	User UpDate(User user);
}

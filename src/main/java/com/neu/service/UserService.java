package com.neu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neu.bean.User;
import com.neu.dao.UserDaoMapper;
@Service
public class UserService {
	@Autowired
	private UserDaoMapper ud;
	//查询用户
	public User getUser(User user) {
		return ud.getUser(user);
	}
	//查询用户名是否存在
	public User getUserName(String userName) {
		return ud.getUserName(userName);
	}
	//添加用户
	public boolean addUser(User user) {
		return ud.addUser(user);
	}
}

package com.neu.dao;

import com.neu.bean.User;

public interface UserDaoMapper {
	//查询用户
	public User getUser(User user);
	//查询用户名是否存在
	public User getUserName(String userName);
	//添加用户
	public boolean addUser(User user);
}

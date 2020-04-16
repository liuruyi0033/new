package com.neu.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neu.bean.User;
import com.neu.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService us;
	//查询用户
	@RequestMapping("getUser")
	public ModelAndView getUser(User user) {
		ModelAndView mv = new ModelAndView();
		User u = us.getUser(user);
		if(u==null||u.getUserName()=="") {
			mv.addObject("info", "用户名或密码输入错误！");
			mv.setViewName("login.jsp");
		}else {
			mv.addObject("info", "");
			mv.setViewName("main.jsp");
		}
		return mv;
	}
	//查询用户名是否存在
	@RequestMapping("getUserName")
	public void getUserName(HttpServletResponse resp,String userName) throws IOException {
		User u = us.getUserName(userName);
		if(u==null) {
			resp.getWriter().write("true");
		}else {
			resp.getWriter().write("false");
		}
	}
	//添加用户
	@RequestMapping("addUser")
	public ModelAndView addUser(User user) {
		ModelAndView mv = new ModelAndView();
		us.addUser(user);
		mv.addObject("succes", "注册成功！");
		mv.setViewName("login.jsp");
		return mv;
	}
}

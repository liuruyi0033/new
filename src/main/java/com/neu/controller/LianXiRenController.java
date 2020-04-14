package com.neu.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neu.bean.LianXiRen;
import com.neu.service.LianXiRenService;

@Controller
public class LianXiRenController {
	@Autowired
	private LianXiRenService lxrs;
	//查询所有联系人
	@RequestMapping("getAllLianXiRen")
	public ModelAndView getAllLianXiRen(String kehubianhao){
		ModelAndView mv = new ModelAndView();
		List<LianXiRen> lxr = lxrs.getAllLianXiRen(kehubianhao);
		String kehumingcheng = lxrs.getKeHuMingCheng(kehubianhao);
		mv.addObject("lxr",lxr);
		mv.addObject("kehubianhao", kehubianhao);
		mv.addObject("kehumingcheng", kehumingcheng);
		mv.setViewName("lianxiren.jsp");
		return mv;
	}
	//查询单个联系人
	@RequestMapping("lianXiRenById")
	public ModelAndView lianXiRenById(Integer id){
		ModelAndView mv = new ModelAndView();
		LianXiRen lxr = lxrs.lianXiRenById(id);
		mv.addObject("lxr",lxr);
		mv.setViewName("xiugailianxiren.jsp");
		return mv;
	}
	//添加联系人
	@RequestMapping("addLianXiRen")
	public ModelAndView addLianXiRen(HttpServletResponse resp,
		LianXiRen lxr) {
		ModelAndView mv = new ModelAndView();
		lxrs.addLianXiRen(lxr);
		mv.addObject("kehubianhao", lxr.getKehubianhao());
		mv.setViewName("getAllLianXiRen.do");
		return mv;
	}
	//修改联系人
	@RequestMapping("updateLianXiRen")
	public ModelAndView updateLianXiRen(HttpServletResponse resp,
		LianXiRen lxr) {
		ModelAndView mv = new ModelAndView();
		lxrs.updateLianXiRen(lxr);
		mv.addObject("kehubianhao", lxr.getKehubianhao());
		mv.setViewName("getAllLianXiRen.do");
		return mv;
	}
	//删除联系人
	@RequestMapping("deleteLianXiRen")
	public String deleteLianXiRen(HttpServletResponse resp,
		Integer id) {
		lxrs.deleteLianXiRen(id);
		LianXiRen lxr = lxrs.lianXiRenById(id);
		String kehubianhao = lxr.getKehubianhao();
		return "getAllLianXiRen.do?kehubianhao="+kehubianhao;
	}
}

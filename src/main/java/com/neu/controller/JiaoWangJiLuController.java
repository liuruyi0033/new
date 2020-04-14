package com.neu.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neu.bean.JiaoWangJiLu;
import com.neu.service.JiaoWangJiLuService;

@Controller
public class JiaoWangJiLuController {
	@Autowired
	private JiaoWangJiLuService jwjls;
	//查询所有交往记录
	@RequestMapping("getAllJiaoWangJiLu")
	public ModelAndView getAllLianXiRen(String kehubianhao){
		ModelAndView mv = new ModelAndView();
		List<JiaoWangJiLu> jwjl = jwjls.getAllJiaoWangJiLu(kehubianhao);
		String kehumingcheng = jwjls.getKeHuMingCheng(kehubianhao);
		mv.addObject("jwjl",jwjl);
		mv.addObject("kehubianhao", kehubianhao);
		mv.addObject("kehumingcheng", kehumingcheng);
		mv.setViewName("jiaowangjilu.jsp");
		return mv;
	}
	//查询单个交往记录
	@RequestMapping("jiaoWangJiLuById")
	public ModelAndView jiaoWangJiLuById(Integer id){
		ModelAndView mv = new ModelAndView();
		JiaoWangJiLu jwjl = jwjls.jiaoWangJiLuById(id);
		mv.addObject("jwjl",jwjl);
		mv.setViewName("xiugaijiaowangjilu.jsp");
		return mv;
	}
	//添加交往记录
	@RequestMapping("addJiaoWangJiLu")
	public String addJiaoWangJiLu(HttpServletResponse resp,
			JiaoWangJiLu jwjl) {
		jwjls.addJiaoWangJiLu(jwjl);
		return "getAllJiaoWangJiLu.do";
	}
	//修改交往记录
	@RequestMapping("updateJiaoWangJiLu")
	public String updateJiaoWangJiLu(HttpServletResponse resp,
			JiaoWangJiLu jwjl) {
		jwjls.updateJiaoWangJiLu(jwjl);
		return "getAllJiaoWangJiLu.do";
	}
	//删除交往记录
	@RequestMapping("deleteJiaoWangJiLu")
	public String deleteJiaoWangJiLu(HttpServletResponse resp,
			Integer id) {
		String kehubianhao = jwjls.jiaoWangJiLuById(id).getKehubianhao();
		jwjls.deleteJiaoWangJiLu(id);
		return "getAllJiaoWangJiLu.do?kehubianhao="+kehubianhao;
	}
}

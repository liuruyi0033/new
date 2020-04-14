package com.neu.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.neu.bean.KeHuXinXi;
import com.neu.service.KeHuXinXiService;

@Controller
public class KeHuXinXiController {

	@Autowired
	private KeHuXinXiService khxxs;
	
	//查询所有客户信息
	@RequestMapping("getAllKeHu")
	@ResponseBody
	public Map<String,Object> getAllKeHu(@RequestParam("page")Integer index,
			@RequestParam("limit")Integer pageCount) {
		Map<String,Object> map = new HashMap<>();
		List<KeHuXinXi> khxx = khxxs.getAllKeHu(index,pageCount);
		int count = khxxs.getCount();
		map.put("code", 0);
		map.put("msg", "成功");
		map.put("count", count);
		map.put("data", khxx);
		return map;
	}
	//查询单个客户信息
	@RequestMapping("KeHuByBianhao")
	public ModelAndView KeHuByBianhao(HttpServletResponse resp,
			String kehubianhao) {
		ModelAndView mv = new ModelAndView();
		KeHuXinXi khxx = khxxs.KeHuByBianhao(kehubianhao);
		mv.addObject("khxx",khxx);
		mv.setViewName("kehuxinxi.jsp");
		return mv;
	}
	//添加客户
	@RequestMapping("addKeHu")
	public String addKeHu(HttpServletResponse resp,
		KeHuXinXi kh) {
		String khbh = khxxs.getKeHuBiaoHao();
		String str = khbh.substring(3);
		int num = Integer.parseInt(str)+1;
		String kehubianhao = "KHD"+num;
		kh.setKehubianhao(kehubianhao);
		khxxs.addKeHu(kh);
		return "kehuguanli.jsp";
	}
	//删除客户
	@RequestMapping("deleteKeHu")
	public String deleteKeHu(HttpServletResponse resp,
			String kehubianhao) {
		khxxs.deleteKeHu(kehubianhao);
		return "kehuguanli.jsp";
	}
	//修改客户信息
	@RequestMapping("updateKeHu")
	public String updateKeHu(HttpServletResponse resp,
		KeHuXinXi kh) {
		khxxs.updateKeHu(kh);
		return "kehuguanli.jsp";
	}
}

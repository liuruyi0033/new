package com.neu.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.neu.bean.KeHuXinXi;
import com.neu.service.KeHuXinXiService;

@Controller
public class KeHuXinXiController {

	@Autowired
	private KeHuXinXiService khxxs;
	@RequestMapping("getAllKeHu")
	public ModelAndView getAllKeHu() {
		ModelAndView mv = new ModelAndView();
		List<KeHuXinXi> khxx = khxxs.getAllKeHu();
		mv.addObject("khxx",khxx);
		mv.setViewName("kehuguanli.jsp");
		return mv;
	}
}

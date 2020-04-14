package com.neu.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.neu.bean.KeHuLiuShi;
import com.neu.bean.KeHuXinXi;
import com.neu.service.KeHuLiuShiService;

@Controller
public class KeHuLiuShiController {
	@Autowired
	private KeHuLiuShiService khlss;
	//检测是否有客户长时间未曾有过交往
	@RequestMapping("testingKeHuJiLu")
	public String getLastTime(String kehubianhao) throws ParseException{
		List<String> list = khlss.getAllKeHuBianHao();
		for (String str : list) {
			String t = khlss.getLastTime(str);
			if(t==null||t.equals(""))
				continue;
			
			//计算时间差
			Date date = new SimpleDateFormat("yyyy-MM-dd").parse(t);
			Date newDate = new Date();
			long date1 = date.getTime();
			long date2 = newDate.getTime();
			int month = (int) ((date2 - date1) / (1000 * 60 * 60 * 24)); 
			
			if(month>=6) {
				if(khlss.getShuLiang(str)==0) {
					KeHuLiuShi khls = new KeHuLiuShi();
					KeHuXinXi khxx = khlss.getThisKeHu(str);
					String khmc = khxx.getKehumingcheng();
					String khjl = khxx.getKehujingli();
					khls.setKehubianhao(str);
					khls.setKehumingcheng(khmc);
					khls.setKehujingli(khjl);
					khls.setZuihoushijian(t);
					khlss.addKeHuLiuShi(khls);
				}
			}
		}
		return "kehuliushi.jsp";
	}
	//查询所有客户流失记录
	@RequestMapping("getAllKeHuLiuShi")
	@ResponseBody
	public Map<String,Object> getAllKeHuLiuShi(@RequestParam("page")Integer index,
			@RequestParam("limit")Integer pageCount) {
		Map<String,Object> map = new HashMap<>();
		List<KeHuLiuShi> khls = khlss.getAllKeHuLiuShi(index, pageCount);
		int count = khlss.getCount();
		map.put("code", 0);
		map.put("msg", "成功");
		map.put("count", count);
		map.put("data", khls);
		return map;
	}
	//查询单个客户流失记录
	@RequestMapping("getKeHuLiuShiById")
	public ModelAndView getKeHuLiuShiById(Integer id,boolean queren) {
		ModelAndView mv = new ModelAndView();
		KeHuLiuShi khls = khlss.getKeHuLiuShiById(id);
		mv.addObject("khls", khls);
		Integer zt = khls.getZhuangtai();
		if(queren||zt==1) {
			mv.setViewName("querenliushi.jsp");
		}else{
			mv.setViewName("zanhuanliushi.jsp");
		}
		return mv;
	}
	//修改客户流失记录
	@RequestMapping("updateKeHuLiuShi")
	public String updateKeHuLiuShi(KeHuLiuShi khls) {
		Integer zt = khls.getZhuangtai();
		if(zt==1) {
			String time = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
			khls.setQuerenshijian(time);
		}
		khlss.updateKeHuLiuShi(khls);
		return "kehuliushi.jsp";
	}
}


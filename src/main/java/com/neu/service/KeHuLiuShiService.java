package com.neu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neu.bean.KeHuLiuShi;
import com.neu.bean.KeHuXinXi;
import com.neu.dao.KeHuLiuShiDaoMapper;

@Service
public class KeHuLiuShiService {
	@Autowired
	private KeHuLiuShiDaoMapper khlsd;
	//查询所有客户编号
	public List<String> getAllKeHuBianHao(){
		return khlsd.getAllKeHuBianHao();
	}
	//查询客户最后一次交往的时间
	public String getLastTime(String kehubianhao) {
		return khlsd.getLastTime(kehubianhao);
	}
	//查询客户数量
	public Integer getShuLiang(String kehubianhao) {
		return khlsd.getShuLiang(kehubianhao);
	}
	//查询该客户的信息
	public KeHuXinXi getThisKeHu(String kehubianhao) {
		return khlsd.getThisKeHu(kehubianhao);
	}
	//添加客户流失记录
	public boolean addKeHuLiuShi(KeHuLiuShi khls) {
		return khlsd.addKeHuLiuShi(khls);
	}
	//查询客户流失记录的数量
	public Integer getCount() {
		return khlsd.getCount();
	}
	//查询所有的客户信息
	public List<KeHuLiuShi> getAllKeHuLiuShi(Integer index,Integer pageCount){
		return khlsd.getAllKeHuLiuShi(index-1, pageCount);
	}
	//查询单个客户流失记录
	public KeHuLiuShi getKeHuLiuShiById(Integer id) {
		return khlsd.getKeHuLiuShiById(id);
	}
	//修改客户流失记录
	public boolean updateKeHuLiuShi(KeHuLiuShi khls) {
		return khlsd.updateKeHuLiuShi(khls);
	}
}

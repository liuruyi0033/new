package com.neu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neu.bean.KeHuXinXi;
import com.neu.dao.KeHuXinXiDaoMapper;

@Service
public class KeHuXinXiService {
	@Autowired
	private KeHuXinXiDaoMapper khxxd;
	//查询id最大的客户编号
	public String getKeHuBiaoHao() {
		return khxxd.getKeHuBiaoHao();
	}
	//查询所有客户数量
	public Integer getCount() {
		return khxxd.getCount();
	}
	//查询所有的客户信息
	public List<KeHuXinXi> getAllKeHu(Integer index,Integer pageCount){
		return khxxd.getAllKeHu(index-1, pageCount);
	}
	//查询单个客户信息
	public KeHuXinXi KeHuByBianhao(String kehuxinxi) {
		return khxxd.KeHuByBianhao(kehuxinxi);
	}
	//添加客户
	public boolean addKeHu(KeHuXinXi khxx) {
		return khxxd.addKeHu(khxx);
	}
	//删除客户
	public boolean deleteKeHu(String kehubianhao) {
		return khxxd.deleteKeHu(kehubianhao);
	}
	//修改客户信息
	public boolean updateKeHu(KeHuXinXi khxx) {
		return khxxd.updateKeHu(khxx);
	}
}

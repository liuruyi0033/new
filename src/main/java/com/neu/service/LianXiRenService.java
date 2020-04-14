package com.neu.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neu.bean.LianXiRen;
import com.neu.dao.LianXiRenDaoMapper;

@Service
public class LianXiRenService {
	@Autowired
	private LianXiRenDaoMapper lxrd;
	//查询客户编号所对应的客户名称
	public String getKeHuMingCheng(String kehubianhao) {
		return lxrd.getKeHuMingCheng(kehubianhao);
	}
	//查询单个联系人
	public LianXiRen lianXiRenById(Integer id) {
		return lxrd.lianXiRenById(id);
	}
	//查询所有客户数量
	public Integer getCount() {
		return lxrd.getCount();
	}
	//查询所有联系人
	public List<LianXiRen> getAllLianXiRen(String kehubianhao){
		return lxrd.getAllLianXiRen(kehubianhao);
	}
	//添加联系人
	public boolean addLianXiRen(LianXiRen lxr) {
		return lxrd.addLianXiRen(lxr);
	}
	//修改联系人
	public boolean updateLianXiRen(LianXiRen lxr) {
		return lxrd.updateLianXiRen(lxr);
	}
	//删除联系人
	public boolean deleteLianXiRen(Integer id) {
		return lxrd.deleteLianXiRen(id);
	}
}

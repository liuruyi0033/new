package com.neu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neu.bean.LianXiRen;

public interface LianXiRenDaoMapper {
	//查询客户编号所对应的客户名称
	public String getKeHuMingCheng(String kehubianhao);
	//查询所有客户数量
	public Integer getCount();
	//查询单个联系人
	public LianXiRen lianXiRenById(Integer id);
	//查询所有联系人
	public List<LianXiRen> getAllLianXiRen(String kehubianhao);
	//添加联系人
	public boolean addLianXiRen(LianXiRen lxr);
	//修改联系人
	public boolean updateLianXiRen(LianXiRen lxr);
	//删除联系人
	public boolean deleteLianXiRen(Integer id);
}

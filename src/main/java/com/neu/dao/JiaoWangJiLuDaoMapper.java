package com.neu.dao;

import java.util.List;

import com.neu.bean.JiaoWangJiLu;

public interface JiaoWangJiLuDaoMapper {
	//查询客户编号所对应的客户名称
	public String getKeHuMingCheng(String kehubianhao);
	//查询所有交往记录
	public List<JiaoWangJiLu> getAllJiaoWangJiLu(String kehubianhao);
	//查询单个交往记录
	public JiaoWangJiLu jiaoWangJiLuById(Integer id);
	//添加交往记录
	public boolean addJiaoWangJiLu(JiaoWangJiLu jwjl);
	//修改交往记录
	public boolean updateJiaoWangJiLu(JiaoWangJiLu jwjl);
	//删除交往记录
	public boolean deleteJiaoWangJiLu(Integer id);
}

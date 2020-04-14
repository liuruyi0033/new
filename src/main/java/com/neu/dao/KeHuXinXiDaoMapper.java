package com.neu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neu.bean.KeHuXinXi;

public interface KeHuXinXiDaoMapper {
	//查询id最大的客户编号
	public String getKeHuBiaoHao();
	//查询所有客户数量
	public Integer getCount();
	//查询所有客户
	public List<KeHuXinXi> getAllKeHu(@Param("index")Integer index,
			@Param("count")Integer count);
	//查询单个客户信息
	public KeHuXinXi KeHuByBianhao(String kehubianhao);
	//添加客户
	public boolean addKeHu(KeHuXinXi khxx);
	//删除客户
	public boolean deleteKeHu(String kehubianhao);
	//修改客户信息
	public boolean updateKeHu(KeHuXinXi khxx);
}

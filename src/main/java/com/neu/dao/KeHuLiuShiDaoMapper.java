package com.neu.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.neu.bean.KeHuLiuShi;
import com.neu.bean.KeHuXinXi;

public interface KeHuLiuShiDaoMapper {
	//查询所有的客户编号
	public List<String> getAllKeHuBianHao();
	//查询客户最后一次交往的时间
	public String getLastTime(String kehubianhao);
	//查询客户数量
	public Integer getShuLiang(String kehubianhao);
	//查询该客户的信息
	public KeHuXinXi getThisKeHu(String kehubianhao);
	//添加客户流失记录
	public boolean addKeHuLiuShi(KeHuLiuShi khls);
	//查询客户流失记录的数量
	public Integer getCount();
	//查询所有客户流失记录
	public List<KeHuLiuShi> getAllKeHuLiuShi(@Param("index")Integer index,
			@Param("count")Integer count);
	//查询单个客户流失记录
	public KeHuLiuShi getKeHuLiuShiById(Integer id);
	//修改客户流失记录
	public boolean updateKeHuLiuShi(KeHuLiuShi khls);
}

package com.neu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.neu.bean.JiaoWangJiLu;
import com.neu.dao.JiaoWangJiLuDaoMapper;

@Service
public class JiaoWangJiLuService {
	@Autowired
	private JiaoWangJiLuDaoMapper jwjld;
	//查询客户编号所对应的客户名称
	public String getKeHuMingCheng(String kehubianhao) {
		return jwjld.getKeHuMingCheng(kehubianhao);
	}
	//查询单个交往记录
	public JiaoWangJiLu jiaoWangJiLuById(Integer id) {
		return jwjld.jiaoWangJiLuById(id);
	}
	//查询所有交往记录
	public List<JiaoWangJiLu> getAllJiaoWangJiLu(String kehubianhao){
		return jwjld.getAllJiaoWangJiLu(kehubianhao);
	}
	//添加交往记录
	public boolean addJiaoWangJiLu(JiaoWangJiLu jwjl) {
		return jwjld.addJiaoWangJiLu(jwjl);
	}
	//修改交往记录
	public boolean updateJiaoWangJiLu(JiaoWangJiLu jwjl) {
		return jwjld.updateJiaoWangJiLu(jwjl);
	}
	//删除交往记录
	public boolean deleteJiaoWangJiLu(Integer id) {
		return jwjld.deleteJiaoWangJiLu(id);
	}
}

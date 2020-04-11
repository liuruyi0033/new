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
	
	//查询所有的客户信息
	public List<KeHuXinXi> getAllKeHu(){
		return khxxd.getAllKeHu();
	}
}

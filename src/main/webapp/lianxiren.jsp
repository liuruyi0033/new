<%@page import="javax.swing.text.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>联系人</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="layui/css/layui.css"  media="all">
		<script src="js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<ul class="layui-nav layui-bg-blue">
		  <li class="layui-nav-item"><a href="KeHuByBianhao.do?kehubianhao=${kehubianhao }">客户信息</a></li>
		  <li class="layui-nav-item layui-this"><a href="">联系人</a></li>
		  <li class="layui-nav-item"><a href="getAllJiaoWangJiLu.do?kehubianhao=${kehubianhao }">交往记录</a></li>
		</ul> 
		  <table class="layui-table">
			  <colgroup>
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
			  </colgroup>
			  <tr>
				<td>客户编号</td>
				<td>
					${kehubianhao }    
				</td>
				<td>客户名称</td>
				<td>
					${kehumingcheng }
				</td>
			  </tr>
		  </table>
		  <a href="tianjialianxiren.jsp?kehubianhao=${kehubianhao }" class="layui-btn layui-col-xs-offset11">添加联系人</a>
		  <div class="layui-form">
		    <table class="layui-table">
		      <thead>
		        <tr class="layui-bg-blue">
		          <th>姓名</th>
		          <th>性别</th>
		          <th>职位</th>
		          <th>办公电话</th>
		          <th>手机</th>
		          <th>备注</th>
		          <th>操作</th>
		        </tr> 
		      </thead>
		      <tbody>
		     	<c:forEach items="${lxr }" var="lxr">
					<tr>
						<td>${lxr.xingming }</td>
						<td>
							<c:if test="${lxr.xingbie eq '0'}">男</c:if>
							<c:if test="${lxr.xingbie eq '1'}">女</c:if>
						</td>
						<td>${lxr.zhiwei }</td>
						<td>${lxr.dianhua }</td>
						<td>${lxr.shouji }</td>
						<td>${lxr.beizhu }</td>
						<td>
							<a href="lianXiRenById.do?id=${lxr.id }" class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon"></i></a>
		  					<a href="deleteLianXiRen.do?id=${lxr.id }" class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon"></i></a>
						</td>
					</tr>
				</c:forEach>
		      </tbody>
		    </table>
		  </div>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>

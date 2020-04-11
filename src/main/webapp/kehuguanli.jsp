<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>客户管理</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
</head>
<body>
	<ul class="layui-nav layui-bg-blue">
	  <li class="layui-nav-item">客户管理</li>
	</ul> 
	<br/>
	<a href="添加新客户.html" class="layui-btn layui-col-xs-offset11">添加新客户</a>
<div class="layui-form">
  <table class="layui-table">
    <thead>
      <tr>
        <th>客户编号</th>
        <th>名称</th>
        <th>客户等级</th>
        <th>客户经理</th>
        <th>操作</th>
      </tr> 
    </thead>
    <tbody>
    	<c:forEach items="${khxx }" var="khxx">
			<tr>
				<td>${khxx.kehubianhao }</td>
				<td>${khxx.kehumingcheng }</td>
				<td>${khxx.kehudengji }</td>
				<td>${khxx.kehujingli }</td>
				<td>
					<a href="" class="layui-btn"><i class="layui-icon"></i></a>
					<a href="" class="layui-btn layui-btn-danger"><i class="layui-icon"></i></a>
				</td>
			</tr>
		</c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>交往记录</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="layui/css/layui.css"  media="all">
	</head>
	<body>
		<ul class="layui-nav layui-bg-blue">
		  <li class="layui-nav-item"><a href="KeHuByBianhao.do?kehubianhao=${kehubianhao }">客户信息</a></li>
		  <li class="layui-nav-item"><a href="getAllLianXiRen.do?kehubianhao=${kehubianhao }">联系人</a></li>
		  <li class="layui-nav-item layui-this"><a href="">交往记录</a></li>
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
		  <a href="tianjiajiaowangjilu.jsp?kehubianhao=${kehubianhao }" class="layui-btn layui-col-xs-offset11">添加交往记录</a>
		  <div class="layui-form">
		    <table class="layui-table">
		      <thead>
		        <tr class="layui-bg-blue">
		          <th>时间</th>
		          <th>地点</th>
		          <th>概要</th>
		          <th>详细信息</th>
		          <th>备注</th>
		          <th>操作</th>
		        </tr> 
		      </thead>
		      <tbody>
		        <c:forEach items="${jwjl }" var="jwjl">
					<tr>
						<td>${jwjl.shijian }</td>
						<td>${jwjl.didian }</td>
						<td>${jwjl.gaiyao }</td>
						<td>${jwjl.xiangxixinxi }</td>
						<td>${jwjl.beizhu }</td>
						<td>
							<a href="jiaoWangJiLuById.do?id=${jwjl.id }" class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon"></i></a>
			  				<a href="deleteJiaoWangJiLu.do?id=${jwjl.id }" class="layui-btn layui-btn-primary layui-btn-sm"><i class="layui-icon"></i></a>
						</td>
					</tr>
				</c:forEach>
		      </tbody>
		    </table>
		  </div>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
	</body>
</html>

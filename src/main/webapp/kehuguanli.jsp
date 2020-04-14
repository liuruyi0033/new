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
	<a href="tianjiakehu.jsp" class="layui-btn layui-col-xs-offset11">添加新客户</a>
<div class="layui-form">
	<table class="layui-hide" id="test" lay-filter="test"></table>
	<script type="text/html" id="barDemo">
 		<a class="layui-btn layui-btn-xs" lay-event="edit">详情</a>
 		<a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>
	</script>
	<script src="layui/layui.js" charset="utf-8"></script>
	<script>
		layui.use('table', function(){
		  var table = layui.table;
		  
		  table.render({
		    elem: '#test'
		    ,url:'getAllKeHu.do'
		    ,cols: [[
		    	{ title: '序号',type:'numbers'}
		      ,{field:'kehubianhao', title:'客户编号'}
		      ,{field:'kehumingcheng', title:'名称'}
		      ,{field:'kehudengji', title:'客户等级'}
		      ,{field:'kehujingli', title:'客户经理'}
		      ,{fixed:'right', title:'操作', toolbar: '#barDemo'}
		    ]]
		    ,limit:5
	    	,limits:[5,10,15,20]
		    ,page: true
		  });
		  
		  table.on('tool(test)', function(obj){
		    var data = obj.data;
		    //console.log(obj)
		    if(obj.event === 'del'){
		      layer.confirm('真的删除行么', function(index){
	    	  	window.location.href = 'deleteKeHu.do?kehubianhao='+data.kehubianhao;
		      });
		    } else if(obj.event === 'edit'){
		    	window.location.href = 'KeHuByBianhao.do?kehubianhao='+data.kehubianhao;
		    }
		  });
		});
	</script>
</div>
</body>
</html>
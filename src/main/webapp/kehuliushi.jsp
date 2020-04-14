<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>客户流失</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <link rel="stylesheet" href="layui/css/layui.css"  media="all">
</head>
<body>
	<ul class="layui-nav layui-bg-blue">
	  <li class="layui-nav-item">客户流失</li>
	</ul> 
	<br/>
<div class="layui-form">
	<table class="layui-hide" id="test" lay-filter="test"></table>
	<script type="text/html" id="barDemo">
 		<a class="layui-btn layui-btn-xs" lay-event="edit">详情</a>
	</script>
	<script src="layui/layui.js" charset="utf-8"></script>
	<script>
		layui.use('table', function(){
		  var table = layui.table;
		  
		  table.render({
		    elem: '#test'
		    ,url:'getAllKeHuLiuShi.do'
		    ,cols: [[
		       {field:'id', title:'编号'}
		      ,{field:'kehumingcheng', title:'名称'}
		      ,{field:'kehujingli', title:'客户经理'}
		      ,{field:'zuihoushijian', title:'最后一次交流时间'}
		      ,{field:'querenshijian', title:'确认流失时间'}
		      ,{field:'zhuangtai', title:'状态',templet: function(d){
		    	  if(d.zhuangtai==0) return '暂缓流失';
		    	  if(d.zhuangtai==1) return '确认流失';
		      }}
		      ,{fixed:'right', title:'操作', toolbar: '#barDemo'}
		    ]]
		    ,limit:5
	    	,limits:[5,10,15,20]
		    ,page: true
		  });
		  
		  table.on('tool(test)', function(obj){
		    var data = obj.data;
		    //console.log(obj)
		    if(obj.event === 'edit'){
		    	window.location.href = 'getKeHuLiuShiById.do?id='+data.id;
		    }
		  });
		});
	</script>
</div>
</body>
</html>
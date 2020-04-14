<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>新建联系人</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="layui/css/layui.css"  media="all">
	</head>
	<body>
		<ul class="layui-nav layui-bg-blue">
		  <li class="layui-nav-item">新建联系人</li>
		</ul> 
		<br/>
		<form action="addLianXiRen.do" method="post" class="layui-form">
			<input type="hidden" name="kehubianhao" value=${param.kehubianhao }>
			<input type="submit" value="保存" class="layui-btn layui-col-xs-offset10" />
			<a href="getAllLianXiRen.do?kehubianhao=${param.kehubianhao }" class="layui-btn layui-col-xs-offset11">返回</a>
		  <table class="layui-table">
			  <colgroup>
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
			  </colgroup>
			  <tr>
				<td>姓名<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="xingming" required autocomplete="off" class="layui-input" value=${kehubianhao }>
				</td>
				<td>性别<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="radio" name="xingbie" value="0" title="男" checked>
					<input type="radio" name="xingbie" value="1" title="女">
				</td>
			  </tr>
			  <tr>
				<td>职位<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="zhiwei" required autocomplete="off" class="layui-input">
				</td>
				<td>办公电话<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="dianhua" required autocomplete="off" class="layui-input">
				</td>
			  </tr>
			  <tr>
				<td>手机</td>
				<td>
					<input type="text" name="shouji" autocomplete="off" class="layui-input">
				</td>
				<td>备注</td>
				<td>
					<input type="text" name="beizhu" autocomplete="off" class="layui-input">
				</td>
			  </tr>
		  </table>
		</form>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script>
		//Demo
		layui.use('form', function(){
		  var form = layui.form;
		  //监听提交
		  form.on('submit(formDemo)', function(data){
		    layer.msg(JSON.stringify(data.field));
		    return false;
		  });
		});
		</script>
	</body>
</html>

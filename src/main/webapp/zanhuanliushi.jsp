<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>暂缓流失</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="layui/css/layui.css"  media="all">
	</head>
	<body>
		<ul class="layui-nav layui-bg-blue">
		  <li class="layui-nav-item">暂缓流失</li>
		</ul> 
		<br/>
		<form action="updateKeHuLiuShi.do" method="post" class="layui-form">
			<input type="hidden" name="liushiyuanyin" value="">
			<a href="getKeHuLiuShiById.do?id=${khls.id }&queren=true" class="layui-btn layui-btn-danger layui-col-xs-offset9">确认流失</a>
			<input type="submit" value="保存" class="layui-btn layui-col-xs-offset10" />
			<a href="kehuliushi.jsp" class="layui-btn layui-col-xs-offset11">返回</a>
		  <table class="layui-table">
			  <colgroup>
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
			  </colgroup>
			  <tr>
				<td>编号</td>
				<td>
					<input type="text" name="id" readonly="readonly" required autocomplete="off" class="layui-input" value=${khls.id }>
				</td>
				<td>客户</td>
				<td>
					<input type="text" name="kehumingcheng" readonly="readonly" required autocomplete="off" class="layui-input" value=${khls.kehumingcheng }>
				</td>
			  </tr>
			  <tr>
				<td>客户经理</td>
				<td>
					<input type="text" name="kehujingli" readonly="readonly" required autocomplete="off" class="layui-input" value=${khls.kehujingli }>
				</td>
				<td>最后一次交往时间</td>
				<td>
					<input type="text" name="zuihoushijian" readonly="readonly" required autocomplete="off" class="layui-input" value=${khls.zuihoushijian }>
				</td>
			  </tr>
			  <tr>
				<td>暂缓措施</td>
				<td colspan="3">
					<textarea name="zanhuancuoshi" lay-verify="required" class="layui-textarea">${khls.zanhuancuoshi }</textarea>
				</td>
			  </tr>
		  </table>
		</form>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script>
		//Demo
		layui.use(['form','laydate'], function(){
		  var form = layui.form,
		  //监听提交
		  form.on('submit(formDemo)', function(data){
		    layer.msg(JSON.stringify(data.field));
		    return false;
		  });
		});
		</script>
	</body>
</html>

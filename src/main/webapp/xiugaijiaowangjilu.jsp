<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>编辑交往记录</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="layui/css/layui.css"  media="all">
	</head>
	<body>
		<ul class="layui-nav layui-bg-blue">
		  <li class="layui-nav-item">编辑交往记录</li>
		</ul> 
		<br/>
		<form action="updateJiaoWangJiLu.do" method="post" class="layui-form">
			<input type="hidden" name="id" value=${jwjl.id }>
			<input type="hidden" name="kehubianhao" value=${jwjl.kehubianhao }>
			<input type="submit" value="保存" class="layui-btn layui-col-xs-offset10" />
			<a href="getAllJiaoWangJiLu.do?kehubianhao=${jwjl.kehubianhao }" class="layui-btn layui-col-xs-offset11">返回</a>
		  <table class="layui-table">
			  <colgroup>
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
			  </colgroup>
			  <tr>
				<td>时间<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<div class="layui-input-inline">
						<input type="text" name="shijian" id="date" required lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input" value=${jwjl.shijian }>
					</div>
				</td>
				<td>地点<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="didian" required autocomplete="off" class="layui-input" value=${jwjl.didian }>
				</td>
			  </tr>
			  <tr>
				<td>概要<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="gaiyao" required autocomplete="off" class="layui-input" value=${jwjl.gaiyao }>
				</td>
				<td>备注</td>
				<td>
					<input type="text" name="beizhu" autocomplete="off" class="layui-input" value=${jwjl.beizhu }>
				</td>
			  </tr>
			  <tr>
				<td>详细信息</td>
				<td colspan="3">
					<textarea name="xiangxixinxi" required lay-verify="required" placeholder="请输入信息" class="layui-textarea">${jwjl.xiangxixinxi }</textarea>
				</td>
			  </tr>
		  </table>
		</form>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script>
		//Demo
		layui.use(['form','laydate'], function(){
		  var form = layui.form,
		  laydate = layui.laydate;
		  //监听提交
		  form.on('submit(formDemo)', function(data){
		    layer.msg(JSON.stringify(data.field));
		    return false;
		  });
		  laydate.render({
			  elem: '#date'
			});
			laydate.render({
			  elem: '#date1'
			});
		});
		</script>
	</body>
</html>

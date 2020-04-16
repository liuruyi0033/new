<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>客户管理管理系统</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
	</head>
	<body>
		<nav class="navbar navbar-default" style="padding-right: 50px;">
			<div class="navbar-header">
				<a class="navbar-brand" href="#">客户关系管理系统</a>
			</div>
			<div class="navbar-right">
				<a href="login.jsp" class="navbar-text text-danger">返回登录</a>
			</div>
		</nav>
		<div class="col-xs-2">
			<ul class="nav nav-pills nav-stacked">
				<li class="panel">	
					<a data-toggle="collapse" data-parent="#accordion" href="#collapse1">营销管理</a>
					<div id="collapse1" class="panel-collapse collapse">
						<div class="panel-body">
							<ul class="nav nav-stacked">
								<li><a href="yhxxgl.html" target="ifm">销售机会管理</a></li>
								<li><a href="yhqxgl.html" target="ifm">客户开发计划</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li class="panel">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapse2">客户管理</a>
					<div id="collapse2" class="panel-collapse collapse">
						<div class="panel-body">
							<ul class="nav nav-stacked">
								<li><a href="kehuguanli.jsp" target="ifm">客户信息管理</a></li>
								<li><a href="testingKeHuJiLu.do" target="ifm">客户流失管理</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li class="panel">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapse3">统计报表</a>
					<div id="collapse3" class="panel-collapse collapse">
						<div class="panel-body">
							<ul class="nav nav-stacked">
								<li><a href="yhxxgl.html" target="ifm">客户贡献分析</a></li>
								<li><a href="yhqxgl.html" target="ifm">客户构成分析</a></li>
								<li><a href="yhqxgl.html" target="ifm">客户服务分析</a></li>
								<li><a href="yhqxgl.html" target="ifm">客户流失分析</a></li>
							</ul>
						</div>
					</div>
				</li>
				<li class="panel">
					<a data-toggle="collapse" data-parent="#accordion" href="#collapse4">基础数据</a>
					<div id="collapse4" class="panel-collapse collapse">
						<div class="panel-body">
							<ul class="nav nav-stacked">
								<li><a href="yhxxgl.html" target="ifm">数字字典管理</a></li>
								<li><a href="yhqxgl.html" target="ifm">查询产品信息</a></li>
								<li><a href="yhqxgl.html" target="ifm">查询库存</a></li>
							</ul>
						</div>
					</div>
				</li>
			</ul>
		</div>
		
		<div class="col-xs-10">
			<iframe src="" width="100%" height="550px" name="ifm"></iframe>
		</div>
		<script type="text/javascript">
			$(function(){
				$('li').click(function(){
					$(this).addClass("active").siblings().removeClass("active");
				})
			})
		</script>
	</body>
</html>

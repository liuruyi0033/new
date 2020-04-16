<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>用户登录</title>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css"/>
		<script src="js/jquery.min.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
		<style type="text/css">
			.right{
				float: right;
				height: 500px;
				padding: 50px;
				background-color: skyblue;
			}
			.a{
				height: 50px;
				margin-top: 10px;
			}
		</style>
	</head>
	<body style="margin: 100px;background: url(img/bj.jpg) no-repeat;background-size:100% 100%; background-attachment:fixed;">
		<div class="col-xs-7 right" style="background: url(img/bj2.jpg) no-repeat;background-size:100% 100%; background-attachment:fixed;">
			<h1 class="text-info col-xs-offset-2">用户登录</h1>
			<div style="color:red;font-size: 20px;">${succes }</div>
			<form action="getUser.do" method="post" role="form" class="form-horizontal">
				<div class="form-group">
					<label for="user" class="control-label col-xs-2">用户名：</label>
					<div class="col-xs-6">
						<input type="text" placeholder="请输入用户名" name="userName" id="userName" class="form-control" />
					</div>
					<div class="col-xs-3">
						<select class="form-control" id="role" name="role">
						  <option value ="销售主管">销售主管</option>
						  <option value ="客户经理">客户经理</option>
						</select>
					</div>
				</div>
				<div class="form-group">
					<label for="pwd" class="control-label col-xs-2">密码：</label>
					<div class="col-xs-6">
						<input type="password" placeholder="请输入密码" name="userPwd" id="userPwd" class="form-control" />
					</div>
				</div>
				<div style="color:red;font-size: 20px;">${info }</div>
				<input id="login" type="submit" value="登录" class="btn btn-success col-xs-offset-2" />
				<input type="button" value="注册" class="btn btn-warning col-xs-offset-2" data-toggle="modal" data-target="#myModal" />
			</form>
			
			
			<div class="modal" id="myModal">
				<div class="modal-dialog modal-lg">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">x</button>
							<h4 class="modal-title">创建新用户</h4>
						</div>
						<div role="form" class="container-fluid">
							<form class="form-group" action="addUser.do" method="post">
								<div class="row a">
									<div class="form-group">
										<label class="col-sm-2 control-label" for="name">用户名：</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="userName" id="name" placeholder="请输入用户名">
										</div>
										<div class="col-sm-12">
											<span id="haven" class="hide" style="color:red;font-size: 15px">该用户已存在！</span>
										</div>
									</div>
								</div>
								<div class="row a">	
									<div class="form-group">
										<label class="col-sm-2 control-label" for="pwd">密码：</label>
										<div class="col-sm-10">
											<input type="text" class="form-control" name="userPwd" id="pwd" placeholder="请输入密码">
										</div>
									</div>
								</div>
								<div class="row a">	
									<div class="form-group">
										<label class="col-sm-2 control-label" for="birth">权限：</label>
										<div class="col-xs-4">
											<select class="form-control" name="role">
											  <option value ="销售主管">销售主管</option>
											  <option value ="客户经理">客户经理</option>
											</select>
										</div>
									</div>
								</div>
								<div class="modal-footer">
									<input id="cjbtn" type="submit" class="btn btn-success" value="创建">
									<button type="button" class="btn btn-danger" data-dismiss="modal">关闭</button>
								</div>
							</form>
						</div>
					</div>
				</div>
				<script type="text/javascript">
					$(function(){
						$("#name").blur(function(){
							var x = $(this).val();
							$.post(
								"getUserName.do",
								{userName:x},
								function(res,status,xhr){
									if(res!='true'){
										$("#haven").removeClass("hide");
										$("#cjbtn").attr("onclick","return false");
									}else{
										$("#haven").addClass("hide");
										$("#cjbtn").attr("onclick","return true");
									}
								}
							);
						});
					})
				</script>
			</div>
		</div>
	</body>
</html>

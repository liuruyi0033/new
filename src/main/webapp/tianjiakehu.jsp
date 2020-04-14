<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>添加新客户</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="layui/css/layui.css"  media="all">
	</head>
	<body>
		<ul class="layui-nav layui-bg-blue">
		  <li class="layui-nav-item">添加新客户</li>
		</ul> 
		<br/>
		<form action="addKeHu.do" method="post" class="layui-form">
			<input type="submit" value="保存" class="layui-btn layui-col-xs-offset10" />
			<a href="kehuguanli.jsp" class="layui-btn layui-col-xs-offset11">返回</a>
		  <table class="layui-table">
			  <colgroup>
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
			  </colgroup>
			  <tr>
				<td>名称<span style="color: red;font-size: 20px;">*</span></td>
				<td colspan="3">
					<input type="text" name="kehumingcheng" required autocomplete="off" class="layui-input">
				</td>
			  </tr>
			  <tr>
				<td>地区<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<select id="diqu" name="diqu">
					  <option value="0">北京</option>
					  <option value="1">上海</option>
					  <option value="2">杭州</option>
					</select>
				</td>
				<td>客户经理<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="kehujingli" required autocomplete="off" class="layui-input">
				</td>
			  </tr>
			  <tr>
				<td>客户等级<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<select name="kehudengji">
					  <option value="0">战略合作伙伴</option>
					  <option value="1">普通客户</option>
					  <option value="2">稍有接触</option>
					</select>
				</td>
				<td></td>
				<td></td>
			  </tr>
			  <tr>
				<td>客户满意度<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<select name="kehumanyidu">
					  <option value="1">一星</option>
					  <option value="2">二星</option>
					  <option value="3">三星</option>
					  <option value="4">四星</option>
					  <option value="5">五星</option>
					</select>
				</td>
				<td>客户信用度</td>
				<td>
					<select name="kehuxinyongdu">
					  <option value="1">一星</option>
					  <option value="2">二星</option>
					  <option value="3">三星</option>
					  <option value="4">四星</option>
					  <option value="5">五星</option>
					</select>
				</td>
			  </tr>
		  </table>
		  
		  <table class="layui-table">
			  <colgroup>
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
			  </colgroup>
			  <tr>
				<td>地址<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="dizhi" required autocomplete="off" class="layui-input">
				</td>
				<td>邮政编码<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="youbian" required autocomplete="off" class="layui-input">
				</td>
			  </tr>
			  <tr>
				<td>电话<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="dianhua" required autocomplete="off" class="layui-input">
				</td>
				<td>传真<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="chuanzhen" required autocomplete="off" class="layui-input">
				</td>
			  </tr>
			  <tr>
				<td>网址<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="wangzhi" required autocomplete="off" class="layui-input">
				</td>
				<td></td>
				<td></td>
			  </tr>
		  </table>
		  
		  <table class="layui-table">
			  <colgroup>
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
				<col width="20%" class="layui-bg-gray">
				<col width="30%">
			  </colgroup>
			  <tr>
				<td>营业执照注册号</td>
				<td>
					<input type="text" name="yingyezhizhao" autocomplete="off" class="layui-input">
				</td>
				<td>法人<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="faren" required autocomplete="off" class="layui-input">
				</td>
			  </tr>
			  <tr>
				<td>注册资金（万元）</td>
				<td>
					<input type="text" name="zhucezijin" autocomplete="off" class="layui-input">
				</td>
				<td>年营业额</td>
				<td>
					<input type="text" name="nianyingyee" autocomplete="off" class="layui-input">
				</td>
			  </tr>
			  <tr>
				<td>开户银行<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="kaihuyinhang" required autocomplete="off" class="layui-input">
				</td>
				<td>银行账户<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="yinhangzhanghu" required autocomplete="off" class="layui-input">
				</td>
			  </tr>
			  <tr>
				<td>地税登记号</td>
				<td>
					<input type="text" name="dishui" autocomplete="off" class="layui-input">
				</td>
				<td>国税登记号</td>
				<td>
					<input type="text" name="guoshui" autocomplete="off" class="layui-input">
				</td>
			  </tr>
		  </table>
		</form>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script>
		//Demo
		layui.use('form', function(){
		  var form = layui.form;
		});
		</script>
	</body>
</html>


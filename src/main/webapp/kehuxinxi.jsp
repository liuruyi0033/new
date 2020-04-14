<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>客户信息</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link rel="stylesheet" href="layui/css/layui.css"  media="all">
	</head>
	<body>
		<ul class="layui-nav layui-bg-blue">
		  <li class="layui-nav-item layui-this"><a href="">客户信息</a></li>
		  <li class="layui-nav-item"><a href="getAllLianXiRen.do?kehubianhao=${khxx.kehubianhao }">联系人</a></li>
		  <li class="layui-nav-item"><a href="getAllJiaoWangJiLu.do?kehubianhao=${khxx.kehubianhao }">交往记录</a></li>
		</ul> 
		<br/>
		<form action="updateKeHu.do" method="post" class="layui-form">
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
				<td>客户编号</td>
				<td>
					<input type="text" name="kehubianhao" readonly="readonly" required autocomplete="off" class="layui-input" value=${khxx.kehubianhao }>
				</td>
				<td>名称<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="kehumingcheng" required autocomplete="off" class="layui-input" value=${khxx.kehumingcheng }>
				</td>
			  </tr>
			  <tr>
				<td>地区<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="hidden" value="${khxx.diqu }" id="hdiqu"/>
					<select id="diqu" name="diqu">
					  <option value="0">北京</option>
					  <option value="1">上海</option>
					  <option value="2">杭州</option>
					</select>  
				</td>
				<td>客户经理<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="kehujingli" required autocomplete="off" class="layui-input" value=${khxx.kehujingli }>
				</td>
			  </tr>
			  <tr>
				<td>客户等级<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="hidden" value="${khxx.kehudengji }" id="hkehudengji"/>
					<select id="kehudengji" name="kehudengji">
					  <option value="0">战略合作伙伴</option>
					  <option value="1">会员客户</option>
					  <option value="2">稍有接触</option>
					</select>
				</td>
				<td></td>
				<td></td>
			  </tr>
			  <tr>
				<td>客户满意度<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="hidden" value="${khxx.kehumanyidu }" id="hkehumanyidu"/>
					<select id="kehumanyidu" name="kehumanyidu">
					  <option value="1">一星</option>
					  <option value="2">二星</option>
					  <option value="3">三星</option>
					  <option value="4">四星</option>
					  <option value="5">五星</option>
					</select>
				</td>
				<td>客户信用度</td>
				<td>
					<input type="hidden" value="${khxx.kehuxinyongdu }" id="hkehuxinyongdu"/>
					<select id="kehuxinyongdu" name="kehuxinyongdu">
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
					<input type="text" name="dizhi" required autocomplete="off" class="layui-input" value=${khxx.dizhi }>
				</td>
				<td>邮政编码<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="youbian" required autocomplete="off" class="layui-input" value=${khxx.youbian }>
				</td>
			  </tr>
			  <tr>
				<td>电话<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="dianhua" required autocomplete="off" class="layui-input" value=${khxx.dianhua }>
				</td>
				<td>传真<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="chuanzhen" required autocomplete="off" class="layui-input" value=${khxx.chuanzhen }>
				</td>
			  </tr>
			  <tr>
				<td>网址<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="wangzhi" required autocomplete="off" class="layui-input" value=${khxx.wangzhi }>
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
					<input type="text" name="yingyezhizhao" autocomplete="off" class="layui-input" value=${khxx.yingyezhizhao }>
				</td>
				<td>法人<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="faren" required autocomplete="off" class="layui-input" value=${khxx.faren }>
				</td>
			  </tr>
			  <tr>
				<td>注册资金（万元）</td>
				<td>
					<input type="number" name="zhucezijin" autocomplete="off" class="layui-input" value=${khxx.zhucezijin }>
				</td>
				<td>年营业额</td>
				<td>
					<input type="number" name="nianyingyee" autocomplete="off" class="layui-input" value=${khxx.nianyingyee }>
				</td>
			  </tr>
			  <tr>
				<td>开户银行<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="kaihuyinhang" required autocomplete="off" class="layui-input" value=${khxx.kaihuyinhang }>
				</td>
				<td>银行账户<span style="color: red;font-size: 20px;">*</span></td>
				<td>
					<input type="text" name="yinhangzhanghu" required autocomplete="off" class="layui-input" value=${khxx.yinhangzhanghu }>
				</td>
			  </tr>
			  <tr>
				<td>地税登记号</td>
				<td>
					<input type="text" name="dishui" autocomplete="off" class="layui-input" value=${khxx.dishui }>
				</td>
				<td>国税登记号</td>
				<td>
					<input type="text" name="guoshui" autocomplete="off" class="layui-input" value=${khxx.guoshui }>
				</td>
			  </tr>
		  </table>
		</form>
		<script src="layui/layui.js" type="text/javascript" charset="utf-8"></script>
		<script src="js/jquery-3.2.1.min.js" type="text/javascript" charset="utf-8"></script>
		<script type="text/javascript">       
			$(document).ready(function(){
			    var diqu = document.getElementById("hdiqu").value;
			    var kehudengji = document.getElementById("hkehudengji").value;
			    var kehumanyidu = document.getElementById("hkehumanyidu").value;
			    var kehuxinyongdu = document.getElementById("hkehuxinyongdu").value;
			    $("#diqu").val(diqu);
			    $("#kehudengji").val(kehudengji);
			    $("#kehumanyidu").val(kehumanyidu);
			    $("#kehuxinyongdu").val(kehuxinyongdu);
			});   
		</script>
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

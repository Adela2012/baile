<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
	<HEAD>
		<TITLE>
			上虞市百乐园林工程有限公司
		</TITLE>

		<link href="main.css" rel="stylesheet" type="text/css" />
		<link href="./css/style.css" rel="stylesheet" type="text/css" />
		<link href="./css/table.css" rel="stylesheet" type="text/css" />
	</HEAD>
	<BODY>
		<%@ include file="head.jsp" %>
		<!-- crumb  -->
		<div class="crumb" id="crumb">
				您现在的位置：<a href=".">首页</a>&gt;
				<strong class="now">个人信息</strong>
		</div>
		
		
<script type="text/javascript">
function checkform()
{
	

	if (document.getElementById('passwordid').value=="")
	{
		alert("密码不能为空");
		return false;
	}
	if (document.getElementById('passwordid').value.length<6)
	{
		alert("密码长度必须大于6位");
		return false;
	}
	if (document.getElementById('password2id').value != document.getElementById('passwordid').value)
	{
		alert("确认密码与密码不一致");
		return false;
	}	 
	if (document.getElementById('truenameid').value=="")
	{
		alert("真实姓名不能为空");
		return false;
	}
	if (document.getElementById('addressid').value=="")
	{
		alert("地址不能为空");
		return false;
	}
	if (document.getElementById('phoneid').value=="")
	{
		alert("手机不能为空");
		return false;
	}
	
	valid=/^0?1[3,5,8][0,1,2,3,4,5,6,7,8,9]\d{8}$/;  
	if(!valid.test(document.getElementById('phoneid').value)){
		alert("请输入正确的手机格式");
		return false;
	}
	
	
	if (document.getElementById('youxiangid').value=="")
	{
		alert("注册邮箱不能为空");
		return false;
	}
 


	var reg = new RegExp('^[a-zA-Z0-9]+@[a-zA-Z0-9]+.[a-z][a-z.]{2,8}$');

	if(!reg.test(document.getElementById('youxiangid').value)){
		alert("请输入正确的注册邮箱格式");
		return false;
	}
	
	if (document.getElementById('wentiid').value=="")
	{
		alert("我的问题不能为空");
		return false;
	}
	if (document.getElementById('daanid').value=="")
	{
		alert("我的答案不能为空");
		return false;
	}
	
	return true;
}
</script>
<div  class="tablebox">			
		
		<DIV class="wrapper lazybox excel-recom tablestyle1">
			<H2>
				个人信息
			</H2>
			<form action="indexmethod!userupdate2.action" method="post" onsubmit="return checkform()">
    	<table class="table table-bordered table-striped table-hover">
    	<tr>
    	<td align="center" width="40%">
    	<span style="font-weight: bold;font-size: 20px;">用户名:</span>
    	</td>
    	<td>
    	${bean.username }
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">密码:</span>
    	</td>
    	<td>
    	<input type="password" name="password" style="width: 300px;height: 20px;" id="passwordid" value="${bean.password }" />
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">确认密码:</span>
    	</td>
    	<td>
    	<input type="password" name="password2" style="width: 300px;height: 20px;" id="password2id"  value="${bean.password }"/>
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">姓名:</span>
    	</td>
    	<td>
    	<input type="text" name="truename" style="width: 300px;height: 20px;" id="truenameid"  value="${bean.truename }"/>
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">地址:</span>
    	</td>
    	<td>
    	<input type="text" name="address" style="width: 300px;height: 20px;" id="addressid" value="${bean.address }" />
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">手机电话:</span>
    	</td>
    	<td>
    	<input type="text" name="phone" style="width: 300px;height: 20px;" id="phoneid" value="${bean.phone }" />
    	</td>
    	</tr>
    	
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">注册邮箱:</span>
    	</td>
    	<td>
    	<input type="text" name="youxiang" style="width: 300px;height: 20px;" id="youxiangid"  value="${bean.youxiang }"/>
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">我的问题（用于密码找回）:</span>
    	</td>
    	<td>
    	<input type="text" name="wenti" style="width: 300px;height: 20px;" id="wentiid"  value="${bean.wenti }"/>
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">我的答案（用于密码找回）:</span>
    	</td>
    	<td>
    	<input type="text" name="daan" style="width: 300px;height: 20px;" id="daanid"  value="${bean.daan }"/>
    	</td>
    	</tr>
    	
    	
    	
    	
    	</table>
    	<p class="text-center">
    	<input type="submit" value="提交"  class="btn  btn-success"/>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="重置" class="btn  btn-danger" />
    	</p>
    	</form>
		
			
		</DIV>
</div>		
		
			
		<%@include file="footer.jsp" %>
		<%@include file="foot.jsp" %>
		
	
		
	<SCRIPT type=text/javascript src="_files/jquery-1.8.2.min.js"></SCRIPT>	
		

	<SCRIPT type=text/javascript src="_files/base.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/index.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/head.min.js"></SCRIPT>
		
		
		
	</BODY>
</HTML>


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
				<strong class="now">修改收货信息</strong>
		</div>
		
	<script type="text/javascript">
function check()
{
	
	if (document.getElementById('truenameid').value=="")
	{
		alert("收货人姓名不能为空");
		return false;
	}
	if (document.getElementById('addressid').value=="")
	{
		alert("收货地址不能为空");
		return false;
	}
	if (document.getElementById('phoneid').value=="")
	{
		alert("联系电话不能为空");
		return false;
	}
	
	valid=/^0?1[3,5,8][0,1,2,3,4,5,6,7,8,9]\d{8}$/;  
	if(!valid.test(document.getElementById('phoneid').value)){
		alert("请输入正确的联系电话格式");
		return false;
	}
	
	
	return true;
}
</script>
<div  class="tablebox">		
		<DIV class="wrapper lazybox excel-recom">
			<H2>
				修改收货信息
			</H2>
			<form action="indexmethod!shouhuoupdate2.action" method="post" onsubmit="return check()">
    	<table class="table table-bordered table-striped table-hover">
    	<tr>
    	<td align="center" width="40%">
    	<span style="font-weight: bold;font-size: 20px;">收货人姓名：</span>
    	</td>
    	<td>
    	<input type="text" name="truename" style="width: 300px; height: 20px;" id="truenameid" value="${bean.truename }" />
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">收货地址：</span>
    	</td>
    	<td>
    	<input type="text" name="address" style="width: 300px;height: 20px;" id="addressid"  value="${bean.address }"/>
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">联系电话：</span>
    	</td>
    	<td>
    	<input type="text" name="phone" style="width: 300px;height: 20px;" id="phoneid"  value="${bean.phone }"/>
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
		
		
		<SCRIPT language=javascript type=text/javascript>var memberDomain = 'http://member.ehaier.com';</SCRIPT>
		
		
	<SCRIPT type=text/javascript src="_files/jquery-1.8.2.min.js"></SCRIPT>	
		

	<SCRIPT type=text/javascript src="_files/base.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/index.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/head.min.js"></SCRIPT>
		
		
		
	</BODY>
</HTML>


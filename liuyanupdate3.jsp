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
				<strong class="now">查看留言</strong>
		</div>
		
		
	<script type="text/javascript">
function check()
{
	
	if (document.getElementById('biaotiid').value=="")
	{
		alert("留言标题不能为空");
		return false;
	}
	
	
	return true;
}
</script>
		
<div  class="tablebox">		
		<DIV class="wrapper lazybox excel-recom">
			<H2>
				查看留言
			</H2>
			<form action="indexmethod!liuyanadd2.action" method="post" onsubmit="return check()">
    	<table class="table table-bordered table-striped ">
    	<tr>
    	<td >
    	<span style="font-weight: bold;font-size: 20px;">留言标题：</span>
    	</td>
    	<td>
    	<span style="font-weight: bold;font-size: 15px;text-align:center;">${bean.biaoti }</span>
    	</td>
    	</tr>
    	
    	
    	
    	<tr>
    	<td >
    	<span style="font-weight: bold;font-size: 20px;">留言内容：</span>
    	</td>
    	<td>
    	<span style="font-weight: bold;font-size: 15px;text-align:center;">${bean.neirong }</span>
  
    	</td>
    	</tr>
    	
    	
    	<tr>
    	<td >
    	<span style="font-weight: bold;font-size: 20px;">答复时间：</span>
    	</td>
    	<td>
    	<span style="font-weight: bold;font-size: 15px;text-align:center;">${bean.shijian2 }</span>
    	</td>
    	</tr>
    	
    	
    	
    	<tr>
    	<td >
    	<span style="font-weight: bold;font-size: 20px;">答复内容：</span>
    	</td>
    	<td>
    	<span style="font-weight: bold;font-size: 15px;text-align:center;">${bean.dafu }</span>
  
    	</td>
    	</tr>
    	
    	</table>
    	<p class="text-center">
    	<input  onclick="javascript:history.go(-1);" style="width: 60px" type="button" value="返回" class="btn btn-info"/>
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


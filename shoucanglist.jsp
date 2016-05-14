<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<strong class="now">我的收藏</strong>
		</div>
		
		
<div  class="tablebox">			
		<DIV class="wrapper lazybox excel-recom">
			<H2>
				我的收藏信息
			</H2>

			
    	<table class="table table-bordered table-striped table-hover">
    	<tr><th >商品名</th><th >商城价</th><th >操作</th></tr>
    	<c:forEach items="${list}"  var="bean">
    	<tr><td align="center"><a href="indexmethod!product.action?id=${bean.product.id }" target="_blank"><span>${bean.product.pname }</span></a></td><td align="center">${bean.product.price2 }</td>
<td align="center">
<a href="indexmethod!product.action?id=${bean.product.id }" target="_blank">点击访问商品</a>&nbsp;&nbsp;&nbsp;&nbsp;
  	<a href="${url2 }delete.action?id=${bean.id }">删除</a>
</td>
</tr>
</c:forEach>

<tr><td  align="center" colspan="4"><span style="font-weight: bold;font-size: 12px;">${pagerinfo }</span></td></tr>

    	
    	
    	</table>
    	
		
		</DIV>
</div>		
		
		
		
		

		
		
		
		<%@include file="footer.jsp" %>
		<%@include file="foot.jsp" %>
		
		<SCRIPT language=javascript type=text/javascript>var memberDomain = '.';</SCRIPT>
		
		
	<SCRIPT type=text/javascript src="_files/jquery-1.8.2.min.js"></SCRIPT>	
		

	<SCRIPT type=text/javascript src="_files/base.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/index.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/head.min.js"></SCRIPT>
		
		
		
	</BODY>
</HTML>


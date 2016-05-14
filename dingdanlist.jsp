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
				<strong class="now">我的订单</strong>
		</div>
		
		
		
<div  class="tablebox">
		<DIV class="wrapper lazybox excel-recom">
			<H2>
				我的订单
			</H2>
			
			<form action="${url }" method="post">
				&nbsp;&nbsp;&nbsp;&nbsp;
				订单号：<input name="orderid" type="text"  value="${orderid }">
				<input type="submit" class="btn btn-success btn-xs" value="查询"/>
			</form>
			<br />
	<div class="table-responsive">	
	
		
    	<table class="table table-bordered table-striped table-hover">
    	<tr><th >订单号</th><th >收件人姓名</th><th >订单状态</th><th >总价</th><th >操作</th></tr>
    	<c:forEach items="${list}"  var="bean">
    	<tr>
    	<td ><span>${bean.orderid }</span></td>
    	<td >${bean.sjname }</td>
    	<td >
    	${bean.status }
    	</td>
    	<td >￥${bean.zongjia }</td>
<td >
	<a href="${url2 }update3.action?id=${bean.id }">查看</a> 
	
</td>
</tr>
</c:forEach>

<tr><td  align="center" colspan="5"><span style="font-weight: bold;font-size: 12px;">${pagerinfo }</span></td></tr>

    	
    	
    	</table>
		</div>	
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


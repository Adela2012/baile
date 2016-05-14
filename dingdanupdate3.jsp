<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
				<strong class="now">订单详细信息</strong>
		</div>
		
		
<div  class="tablebox">		
		<DIV class="wrapper lazybox excel-recom tablestyle1">
			<H2>
				订单详细信息
			</H2>
			
			 <table class="table table-striped table-hover " >
      
     

<tr><td class="time-list"><span>订单号</span></td><td align="center">${bean.orderid }</td></tr>

<tr><td class="time-list"><span>收件人姓名</span></td><td align="center">${bean.sjname }</td></tr>

<tr><td class="time-list"><span>收件人地址</span></td><td align="center">${bean.address }</td></tr>

<tr><td class="time-list"><span>收件人手机</span></td><td align="center">${bean.phone }</td></tr>

<tr><td class="time-list"><span>总价</span></td><td align="center">￥${bean.zongjia }</td></tr>

<tr><td class="time-list"><span>添加时间</span></td><td align="center">${fn:substring(bean.createtime,0, 19)}</td></tr>

<tr><td class="time-list"><span>订单状态</span></td><td align="center">${bean.status }</td></tr>

<tr><td class="time-list"><span>订单详情</span></td><td align="center">${bean.xiangqing }</td></tr>


      </table>
	<p  align="center">	
 <input  type="button" class="btn btn-info " value="&nbsp;&nbsp;&nbsp;返回&nbsp;&nbsp;&nbsp; "  onclick="javascript:history.go(-1);" />			
	</p>	
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


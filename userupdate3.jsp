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
				<strong class="now">会员信息</strong>
		</div>
<div  class="tablebox">				
		<DIV class="wrapper lazybox excel-recom tablestyle1">
			<H2>
				会员信息
			</H2>
		
    	<table class="table table-bordered table-striped table-hover">
    	<tr>
    	<td align="center" width="40%">
    	<span style="font-weight: bold;font-size: 20px;">消费总金额:</span>
    	</td>
    	<td>
    	￥${bean.total }
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">是否为VIP会员:</span>
    	</td>
    	<td>
    	 <c:if test="${bean.total>=5000}">
 VIP会员
 </c:if>
  	<c:if test="${bean.total<5000}">
 非VIP会员
 </c:if>
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">规则:</span>
    	</td>
    	<td>
    	消费总金额大于等于5000自动成为VIP会员，会员享受9折优惠
    	</td>
    	</tr>
    	
    	
    	
    	</table>
    	
  
			
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


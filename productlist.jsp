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
	</HEAD>
	<BODY>
		
		<%@ include file="head.jsp" %>
		<!-- crumb  -->
		<div class="crumb" id="crumb">
				您现在的位置：<a href=".">首页</a>&gt;
				<strong class="now">商品列表</strong>
		</div>
		
		
		<DIV class="wrapper lazybox excel-recom">
			<H2>
				<a href="indexmethod!productlist.action?tuijian=1">商品列表</a>
			</H2>
			<UL style="DISPLAY: block" class="ul-excel ul-excel-1">
				<!--2-0-->
				
				<c:forEach items="${list}" var="product">
				<LI class=li-excel>
					<H4 class=h4-pro-title>
						<A href="indexmethod!product.action?id=${product.id }" 
						target=_blank ><SPAN class=a-title>产品名：${product.pname }</SPAN></A>
				
						<SPAN class=s-abs  >供应商：${product.gys.gname }</SPAN>
						<SPAN class="s-abs" style="margin-top:2px;color:#61D46B">${product.gaishu }</SPAN>
						<EM class=em-price>价格：￥${product.price2 }</EM>
					</H4>
					<A class=a-thumb href="indexmethod!product.action?id=${product.id }" target=_blank >
					<IMG  src="<%=basePath %>/uploadfile/${product.imgpath }" width=288 height=288 />
					</A>
					
				</LI>
				</c:forEach>
				
			</UL>
		
		</DIV>
		
		
			<%@include file="footer.jsp" %>
		<%@include file="foot.jsp" %>
		
		
		<SCRIPT type=text/javascript src="_files/jquery-1.8.2.min.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/base.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/index.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/head.min.js"></SCRIPT>
		
		
	</BODY>
</HTML>


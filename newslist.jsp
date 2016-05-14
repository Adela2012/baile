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
				<strong class="now">技术资讯</strong>
		</div>
<div class="container">		
<div  class="leftbox">	
	<h3 >
	   <a href="about.jsp"  >关于百乐</a>
	</h3>
	<h3 >
	   <a  href="indexmethod!noticelist.action" >网站公告</a>
	</h3>
	<h3 class="chose">
	   <a href="indexmethod!newslist.action" >技术资讯</a>
	</h3>
	<h3 >
	   <a href="service.jsp" >服务帮助</a>
	</h3>
	<h3 >
	   <a href="contact.jsp" >联系我们</a>
	</h3>

</div>	
	
<div  class="rightbox">	
	<div  class="tablebox">					
			<DIV class="wrapper lazybox excel-recom tablestyle1">
				<H2>
					技术资讯
				</H2>				
				<c:forEach items="${list }" var="bean">
				<div class="infolist clearfix">
	                 <img src="uploadfile/${bean.path} ">
	                 <div class="infolist-right">
	                      <p><a href="indexmethod!news.action?id=${bean.id }" class="f16">${bean.title }</a></p>
	                      <p class="gray f12">日期：${bean.time }</p>
	                      <p class="infodetail" id="infodetail">${bean.neirong }</p>
	                 </div>
               </div>
				</c:forEach>
				<br/><br/><br/>
				
				<p class="text-center">${pagerinfo }</p>
				
											
			</DIV>
	</div>		
</div>		
</div>
<div class="clearfix"></div>	

		
		<%@include file="footer.jsp" %>
		<%@include file="foot.jsp" %>
		
	
		
	<SCRIPT type=text/javascript src="_files/jquery-1.8.2.min.js"></SCRIPT>	
		

	<SCRIPT type=text/javascript src="_files/base.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/index.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/head.min.js"></SCRIPT>
		
		
		
	</BODY>
</HTML>

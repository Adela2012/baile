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
				<a href="indexmethod!noticelist.action">网站公告</a>&gt;
				<strong class="now">${bean.title }</strong>
		</div>
<div class="container">		
<div  class="leftbox">	
	<h3 >
	   <a href="about.jsp"  >关于百乐</a>
	</h3>
	<h3 class="chose">
	   <a  href="indexmethod!newslist.action" >网站公告</a>
	</h3>
	<h3 >
	   <a href="indexmethod!newslist.action" >技术资讯</a>
	</h3>
	<h3 >
	   <a href="service.jsp" >服务帮助</a>
	</h3>
	<h3 >
	   <a href="indexmethod!userupdate.action" >联系我们</a>
	</h3>

</div>	
	
<div  class="rightbox">	
	<div  class="tablebox">					
		<DIV class="wrapper lazybox excel-recom tablestyle1">
			 <div class="article">
				<h2 style=" position:relative;"> ${bean.title }</h2>
				<p>文章来源：${bean.source }  &nbsp;&nbsp; 点击次数：${bean.count }次&nbsp;&nbsp; 更新日期：${bean.time }</p>
				<div class="content-article">                       
                        <div style="font-family:Microsoft YaHei;font-size:16px;">
	尊敬的百乐园林会员，您好！<br/>
       ${bean.neirong }
	                    </div>
						<br/>	 
			    </div>
			    <div class="article-tip">
                    <p>
                        <span class="rt"><a class="blue" href="indexmethod!noticelist.action" target="_blank">返回公告列表</a></span>                       
                    </p>                   
                </div>
             </div>	
		</DIV>		
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


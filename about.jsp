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
				<strong class="now">关于我们</strong>
		</div>
<div class="container">		
<div  class="leftbox">	
	<h3 class="chose">
	   <a href="about.jsp"  >关于百乐</a>
	</h3>
	<h3 >
	   <a  href="indexmethod!noticelist.action" >网站公告</a>
	</h3>
	<h3 >
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
					关于百乐
				</H2>
				<p class="about">
				

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
上虞市百乐园林工程有限公司（简称百乐园林），位于著名的水乡、桥乡、酒乡、书法之乡、名士之乡绍兴。 致力于提供标准化、规范化及独具个性的园林服务，是一家专业从事盆栽植物销售、租赁、绿化设计、施工、养护的企业。 
<br /><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
公司推出室内外花卉盆栽植物租赁业务，包括宾馆、写字楼、企事业单位及家庭的绿化布置。 可根据客户不同的要求提供绿色关叶植物，观花植物，鲜花插花，盆景等。
<br /><br />
 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
 我们拥有专业的绿化设计团队与施工养护团队。 绍兴周边地区我们可以免费上门服务，其他地区的朋友如果量大我们可以商量，量小我们则看具体的植物是否方便托运。
<br />	<br />		
				</p>
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


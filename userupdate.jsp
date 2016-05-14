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
		<link href="css/dl-style.css" rel="stylesheet" type="text/css" />
	</HEAD>
	<BODY>
		<%@ include file="head.jsp" %>
		<!-- crumb  -->
		<div class="crumb" id="crumb">
				您现在的位置：<a href=".">首页</a>&gt;
				<strong class="now">个人信息</strong>
		</div>
<div class="container">		
<div  class="leftbox">	
	<h3 class="">
	   <a href="indexmethod!dingdanlist.action"  >我的订单</a>
	</h3>
	<h3 class="">
	   <a  href="indexmethod!shoucanglist.action" >我的收藏</a>
	</h3>
	<h3 class="">
	   <a href="indexmethod!liuyanlist.action" >我的留言</a>
	</h3>
	<h3 class="">
	   <a href="indexmethod!shouhuolist.action" >收货信息</a>
	</h3>
	<h3 class="chose">
	   <a href="indexmethod!userupdate.action" >个人信息</a>
	</h3>
	<h3 class="">
	   <a href="indexmethod!userupdate.action" >会员信息</a>
	</h3>
</div>	
	
<div  class="rightbox">	
	<div  class="tablebox">					
			<DIV class="wrapper lazybox excel-recom tablestyle1">
				<H2>
					个人信息
				</H2>
				<form action="indexmethod!userupdate1.action" method="post" onsubmit="return checkform()">
	    	
	    	<dl>
	    	<dt >
	    	<span >用户名:</span>
	    	</dt>
	    	<dd>
	    	${bean.username }
	    	</dd>
	    	</dl>
	    	
	    	<dl>
	    	<dt >
	    	<span >密码:</span>
	    	</dt>
	    	<dd>
	    	******
	    	</dd>
	    	</dl>
	    	
	    	<dl>
	    	<dt >
	    	<span >姓名:</span>
	    	</dt>
	    	<dd>
	    	${bean.truename }
	    	</dd>
	    	</dl>
	    	
	    	<dl>
	    	<dt >
	    	<span >地址:</span>
	    	</dt>
	    	<dd>
	    	${bean.address }
	    	</dd>
	    	</dl>
	    	
	    	<dl>
	    	<dt >
	    	<span >手机电话:</span>
	    	</dt>
	    	<dd>
	    	${bean.phone }
	    	</dd>
	    	</dl>
	    	
	    	
	    	<dl>
	    	<dt >
	    	<span >注册邮箱:</span>
	    	</dt>
	    	<dd>
	    	${bean.youxiang }
	    	</dd>
	    	</dl>
	    	
	    	<dl>
	    	<dt >
	    	<span >我的问题:</span>
	    	</dt>
	    	<dd>
	    	${bean.wenti }
	    	</dd>
	    	</dl>
	    	
	    	<dl>
	    	<dt >
	    	<span >我的答案:</span>
	    	</dt>
	    	<dd>
	    	${bean.daan }
	    	</dd>
	    	</dl>
	    	<div class="clearfix"></div>
	    	<p class="text-center">
	    	<input type="submit" value="修改"  class="btn  btn-info"/>
	    	</p>
	    	</form>
			
				
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


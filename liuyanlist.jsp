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
				<strong class="now">我的留言</strong>
		</div>
		
		
		
		
<div  class="tablebox">			
		<DIV class="wrapper lazybox excel-recom">
			<H2>
				我的留言
			</H2>
			<a href="${url2 }add.action"><span style="font-size: 15px;font-weight: bold;">添加新留言</span></a>
			<br/>
    	<table  class="table table-bordered table-striped table-hover">
    	<tr><th >留言标题</th><th >留言时间</th><th >答复状态</th><th >操作</th></tr>
    	<c:forEach items="${list}"  var="bean">
    	<tr><td align="center"><span>${bean.biaoti }</span></td><td align="center">${bean.shijian1 }</td><td align="center">${bean.zhuangtai }</td>
<td align="center">
	<a href="${url2 }update3.action?id=${bean.id }">查看留言</a> &nbsp; 
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


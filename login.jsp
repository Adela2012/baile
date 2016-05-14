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
		<link href="css/loginstyle.css" rel="stylesheet" type="text/css" />
	</HEAD>
	<BODY>
		<%@ include file="head.jsp" %>
		<!-- crumb  -->
		<div class="crumb" id="crumb">
				您现在的位置：<a href=".">首页</a>&gt;
				<strong class="now">用户登录</strong>
		</div>
		
		
		
				
		<script type="text/javascript" language="javascript">
		function checkform(){
			if(document.getElementById("usernameid").value==""){
				
				alert('用户名不能为空');
				return false;
			}
			if(document.getElementById("passwordid").value==""){
				
				alert('密码不能为空');
				return false;
			}
			return true;
		}
		</script>
		
	<div class="testbox">
	<DIV class="wrapper lazybox loginbox excel-recom">
			<H2 style="font-size:20px; margin:0px;padding:0px;">
				用户登录
			</H2>
			<form action="indexmethod!login.action" method="post" onsubmit="return checkform()">
    				    		    	
		    	<dd class="login-dd-border">
		    	    <i class="login-icon-user left"></i>
		    		<input class="login-input" type="text" name="username" id="usernameid" placeholder="请输入用户名"/>
		    	</dd>
	    	
		    	<dd class="login-dd-border">
		    	    <i class="login-icon-password left"></i>
		    		<input class="login-input" type="password" name="password"  id="passwordid" placeholder="请输入密码"/>
	    		</dd>
	    	
		    	<dd colspan="2" align="center">  
			    	<input type="submit" value="登录" class="sbtn btn"  />
			    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			    	<input type="reset" value="重置" class="sbtn btn"  />
		    		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		    		<a href="password.jsp">忘记密码</a>
		    	</dd>
		    	
		    </form>		
		</DIV>	
	
	
	</div>
				
			
		<%@include file="foot.jsp" %>
		
		<SCRIPT language=javascript type=text/javascript>var memberDomain = '.';</SCRIPT>		
	    <SCRIPT type=text/javascript src="_files/jquery-1.8.2.min.js"></SCRIPT>	
	    <SCRIPT type=text/javascript src="_files/base.js"></SCRIPT>
		<SCRIPT type=text/javascript src="_files/index.js"></SCRIPT>
		<SCRIPT type=text/javascript src="_files/head.min.js"></SCRIPT>
		
		
		
	</BODY>
</HTML>


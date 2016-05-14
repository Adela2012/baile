<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>百乐园林管理后台</title>
<link rel="stylesheet" type="text/css" href="css/style.css" />
<style>
	body{height:100%;background:#16a085;overflow:hidden;}
	canvas{z-index:-1;position:absolute;}
</style>
<script src="js/jquery.js"></script>
<script src="js/verificationNumbers.js"></script>
<script src="js/Particleground.js"></script>
<script>
	$(document).ready(function() {
		  //粒子背景特效
		  $('body').particleground({
		    dotColor: '#5cbdaa',
		    lineColor: '#5cbdaa'
		  });
		  //验证码
		  createCode();
		  //登录
		  $("#login_sub").click(function(){
					$("#submitForm").attr("action", "method!login.action").submit();
			});
	});
/*回车事件*/
	function EnterPress(e){ //传入 event 
		var e = e || window.event; 
		if(e.keyCode == 13){ 
					$("#submitForm").attr("action", "method!login.action").submit();
		} 
	} 
</script>

</head>
<body>
	<dl class="admin_login">
	<form id="submitForm" action="method!login.action" method="post">
		 <dt>
			  <strong>百乐园林后台管理系统</strong>
			  <em>Baile Management System</em>
		 </dt>
		 <dd class="user_icon">
		 	 <input type="text" name="username"  id="name" placeholder="账号" class="login_txtbx"/>
		 </dd>
		 <dd class="pwd_icon">
		  	<input type="password" name="password"  id="pwd" placeholder="密码" class="login_txtbx"/>
		 </dd>
		 <dd class="val_icon">
			<div class="checkcode">
			    <input type="text" id="J_codetext" placeholder="验证码" maxlength="4" class="login_txtbx">
			    <canvas class="J_codeimg" id="myCanvas" onclick="createCode()">对不起，您的浏览器不支持canvas，请下载最新版浏览器!</canvas>
			</div>
		  	<input type="button" value="验证码核验" class="ver_btn"  onClick="validate();">
		 </dd>
		 <dd>
		  	<input type="submit" value="立即登陆" class="submit_btn" id="login_sub"/>
		 </dd>
		 <dd>
		  	<p>Copyright © 2008-2016 上虞市百乐园林工程有限公司 All Rights Reserved </p>		  
		 </dd>
		 </form>
	</dl>
	
</body>
</html>
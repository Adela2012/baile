<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'logintest.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/style.css">
	

  </head>
  
  <body>
    <!--登录框 start-->
			<div class="login-content w1090">
            <div class="left baile-login">
            <div class="banner">
	<div class="banner-btn">
		<a href="javascript:;" class="prevBtn"><i class="iconfont f40 red">&#xe623;</i></a>
		<a href="javascript:;" class="nextBtn"><i class="iconfont f40 red">&#xe61f;</i></a>
	</div>
	<ul class="banner-img">
		<li><i class="iconfont f160 red">&#xe622;</i><span><em class="blue">百乐园林</em>&nbsp;&nbsp;植物盆栽之家</span></li>
	    <li><i class="iconfont f160 red">&#xe627;</i><span><em class="blue">盆栽租赁</em>&nbsp;&nbsp;省时省事省钱</span></li>
		<li><i class="iconfont f160 red">&#xe628;</i><span><em class="blue">不满意</em>&nbsp;&nbsp;100%退款保障</span></li>
	</ul>
	<ul class="banner-circle"></ul>
</div>
            
            </div>
				<div class="login-box login-con">
                
                <h3 class="f18 gray333">用户登录</h3>
						
					<form class="form" method="post">
						
						<dd class="login-dd-border">
							<i class="login-icon-user left"></i>
							<input class="login-input" value="请输入用户名" type="text" onblur="if(this.value==''||this.value=='请输入用户名'){this.value='请输入用户名';this.style.color='#999';}" onfocus="if(this.value=='请输入用户名'){this.value=''};this.style.color='black';"/>
						</dd>
						<dd class="login-dd-border">
							<i class="login-icon-password  left"></i>
							<input class="login-input" value="请输入密码" type="password" onblur="if(this.value==''||this.value=='请输入密码'){this.value='请输入密码';this.style.color='#999';}" onfocus="if(this.value=='请输入密码'){this.value=''};this.style.color='black';"/>
						</dd>
						<dd class="gray2">
							<input class="left login-checkbox" type="checkbox" checked="" name="remeber" value="0">记住用户名</input>
							<span class="right"><a class="gray2 find-password" href="#">忘记密码</a><span><a class="blue free-register" href="#">免费注册</a></span></span>
						</dd>
						<dd class="login-button-border">
							<a href="#" class="login-button f16">立即登录</a>
						</dd>

					</form>
				</div>
                <div class="clear"></div>
			</div>
		<!--登录框 end-->












  </body>
</html>

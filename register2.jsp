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
		<link href="css/registerstyle.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" language="javascript">

var code ; //在全局 定义验证码
function createCode(){ 
code = "";
var codeLength = 4;//验证码的长度
var checkCode = document.getElementById("checkCode");
checkCode.value = "";

var selectChar = new Array(2,3,4,5,6,7,8,9,'A','B','C','D','E','F','G','H','J','K','L','M','N','P','Q','R','S','T','U','V','W','X','Y','Z');

for(var i=0;i<codeLength;i++) {
   var charIndex = Math.floor(Math.random()*32);
   code +=selectChar[charIndex];
}
if(code.length != codeLength){
   createCode();
}
checkCode.value = code;
}



function checkform(){

	var inputCode = document.getElementById("input1").value.toUpperCase();

if(inputCode.length <=0) {
   alert("请输入验证码！");
   return false;
}
else if(inputCode != code ){
   alert("验证码输入错误！");
   createCode();
   return false;	
}

	if(document.getElementById("usernameid").value==""){
		
		alert('用户名不能为空');
		return false;
	}
	
	var valid = /^\w+$/;
	if(!valid.test(document.getElementById("usernameid").value)){
		alert('用户名必须是数字，字母或者下划线');
		return false;
		
	}
	
	if(document.getElementById("passwordid").value==""){
		
		alert('密码不能为空');
		return false;
	}
	
	if(document.getElementById("passwordid").value.length<6){
		
		alert('密码长度必须大于6位');
		return false;
	}
	
	if(document.getElementById("passwordid").value!=document.getElementById("password2id").value){
		
		alert('确认密码和原密码不一致');
		return false;
	}
	
	if(document.getElementById("truenameid").value==""){
		
		alert('姓名不能为空');
		return false;
	}
	
	
	if(document.getElementById("addressid").value==""){
		
		alert('地址不能为空');
		return false;
	}
	
	if(document.getElementById("phoneid").value==""){
		
		alert('手机不能为空');
		return false;
	}
	
	valid = /^0?1[3,5,8][0,1,2,3,4,5,6,7,8,9]\d{8}$/;
	
	if(!valid.test(document.getElementById("phoneid").value)){
		
		alert('请输入正确的手机格式');
		return false;
	}
	
	
	if (document.getElementById('youxiangid').value=="")
	{
		alert("注册邮箱不能为空");
		return false;
	}
 


	var reg = new RegExp('^[a-zA-Z0-9]+@[a-zA-Z0-9]+.[a-z][a-z.]{2,8}$');

	if(!reg.test(document.getElementById('youxiangid').value)){
		alert("请输入正确的注册邮箱格式");
		return false;
	}
	
	if (document.getElementById('wentiid').value=="")
	{
		alert("我的问题不能为空");
		return false;
	}
	if (document.getElementById('daanid').value=="")
	{
		alert("我的答案不能为空");
		return false;
	}
	
	
	return true;

}

</script>
		
	</HEAD>
	<BODY onload="createCode();">
		<%@ include file="head.jsp" %>
		
		
		<!-- crumb  -->
		<div class="crumb" id="crumb">
				您现在的位置：<a href=".">首页</a>&gt;
				<strong class="now">新用户注册</strong>
		</div>
		
		

		
<div class="regbox">	
		<div class="picbox">	
		</div>	
		<DIV class="wrapper lazybox registerbox excel-recom">
			<H2>
				新用户注册
			</H2>
			<form action="indexmethod!register.action" method="post" onsubmit="return checkform()">
    	<dl>
	    	<dt>
	    	   <span class="required">用户名:</span>
	    	</dt>
	    	<dd class="register-dd-border">
	    	   <input type="text" name="username" class="register-input" id="usernameid" />
	    	</dd>
    	</dl>
    	
    	<dl>
    	<dt>
    	     <span class="required">密码:</span>
    	</dt>
    	<dd class="register-dd-border">
    	     <input type="password" name="password" class="register-input" id="passwordid" />
    	</dd>
    	</dl>
    	
    	<dl>
    	<dt >
    	<span class="required">确认密码:</span>
    	</dt>
    	<dd class="register-dd-border">
    	<input type="password" name="password2" class="register-input" id="password2id" />
    	</dd>
    	</dl>
    	
    	<tr>
    	<dt >
    	<span class="required">姓名:</span>
    	</dt>
    	<dd class="register-dd-border">
    	<input type="text" name="truename" class="register-input" id="truenameid" />
    	</dd>
    	</dl>
    	
    	<dl>
    	<dt >
    	<span class="required">地址:</span>
    	</dt>
    	<dd class="register-dd-border">
    	<input type="text" name="address" class="register-input" id="addressid" />
    	</dd>
    	</dl>
    	
    	<dl>
    	<dt >
    	<span class="required">手机电话:</span>
    	</dt>
    	<dd class="register-dd-border">
    	<input type="text" name="phone" class="register-input" id="phoneid" />
    	</dd>
    	</dl>
    	
    	<dl>
    	<dt >
    	<span class="required">注册邮箱:</span>
    	</dt>
    	<dd class="register-dd-border">
    	<input type="text" name="youxiang" class="register-input" id="youxiangid" />
    	</dd>
    	</dl>
    	
    	<dl>
    	<dt >
    	<span class="required">我的问题（密码找回）:</span>
    	</dt>
    	<dd class="register-dd-border">
    	<input type="text" name="wenti" class="register-input" id="wentiid" />
    	</dd>
    	</dl>
    	
    	<dl>
    	<dt >
    	<span class="required">我的答案（密码找回）:</span>
    	</dt>
    	<dd class="register-dd-border">
    	<input type="text" name="daan" class="register-input" id="daanid" />
    	</dd>
    	</dl>
    	
    	    
    	
    	<dl>
    	<dt >
    	<span class="required">输入验证码:</span>
    	</dt>
    	<dd class="register-dd-border">
    	<input type="text"  class="register-input" id="input1" />
    	</dd>
    	</dl>
    	
    	
    
    	
    	<dl>
    	<dt >
    	<span class="required">获取验证码:</span>
    	</dt>
    	<dd>
    	  <input type="text" id="checkCode" class="code-input" class="code" style="width: 65px" size="20" readonly="readonly"  onpaste="return false" oncontextmenu="return false" oncopy="javascript:alert('不可复制');return false;" oncut="return false" />
        <a href="####" onclick="createCode()">看不清楚</a>
    	</dd>
    	</dl>
    	
    	
    	<dl>  	
    	<dd colspan="2" align="center" >  
    	<input type="submit" value="注册" class="sbtn btn btn-warning" />
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="重置" class="sbtn btn" />
    	</dd>
    	</dl>
    	
    	
    	
    	</form>	
		</DIV>
		
		
</div>	
		
		
	
		<%@include file="foot.jsp" %>
		
		<SCRIPT language=javascript type=text/javascript>var memberDomain = 'http://member.ehaier.com';</SCRIPT>
		
		
	<SCRIPT type=text/javascript src="_files/jquery-1.8.2.min.js"></SCRIPT>	
		

	<SCRIPT type=text/javascript src="_files/base.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/index.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/head.min.js"></SCRIPT>
		
		
		
	</BODY>
</HTML>


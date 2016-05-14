<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<title>百乐园林管理后台</title>
	<link href="style/authority/main_css.css" rel="stylesheet" type="text/css" />
	<link href="style/authority/zTreeStyle.css" rel="stylesheet" type="text/css">
<link href="style/table.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="css/style.css" />	
	<script src="js/jquery.js"></script>
<script src="js/jquery.mCustomScrollbar.concat.min.js"></script>

</head>
<body >
    
    <%@ include file="head.jsp" %>
    
    
    <script language="javascript" type="text/javascript">

function checkform()
{
	 
	

	if (document.getElementById('password1id').value=="")
	{
		alert("原密码不能为空");
		return false;
	}
	if (document.getElementById('password2id').value=="")
	{
		alert("新密码不能为空");
		return false;
	}
	
	if (document.getElementById('password2id').value.length<6)
	{
		alert("新密码长度必须大于6位");
		return false;
	}
	if (document.getElementById('password2id').value != document.getElementById('password3id').value)
	{
		alert("新密码与新密码确认不一致");
		return false;
	}	 
	return true;
	
}


</script>
    
    <!-- side menu start -->
	
	<%@ include file="left.jsp" %>
	
    <!-- side menu start -->
   
<section class="rt_wrap content mCustomScrollbar">
   <div class="rt_content">	      	
	    
   
      	

	<div id="container">
		<div id="nav_links" align="center">
		<br />
			当前位置：修改密码
			
		</div>
		<br/>
		<div class="ui_content">
			
			<form action="method!changepwd2.action" method="post" onsubmit="return checkform()">
<TABLE class="table ">
  	
  	<TR height=>
    <TD align="center" >
	 原密码:
</TD>
    <TD align="center"> 
    <input type="password" name="password1" id="password1id" />
 
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >
    新密码:
    </TD>
    <TD align="center">  
    <input type="password" name="password2" id="password2id" />
    
    </TD>
    </TR>
    
    <TR height=>
    <TD align="center" >
    确认新密码:
    </TD>
    <TD align="center">  
     <input type="password" name="password3" id="password3id" />
    
    </TD>
    </TR>
    
    
    
    <TR height=>
    <TD align="center" > 操作：</TD>
    <TD align="center"> 
     <input type="submit" value="提交" style="width: 60px" class='btn btn-success'/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	<input  onclick="javascript:history.go(-1);" style="width: 60px" type="button" value="返回" class='btn btn-info'/>
    
    </TD>
    </TR>
    
    </TABLE>
    </form>
		
		</div>
	</div>


  </div>
</section>

</body>
</html>

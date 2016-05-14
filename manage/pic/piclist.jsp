<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript">
	 function buttonColor(){
       $("a[href='method!piclist.action']").addClass("active");}
        window.onload=function(){       
         buttonColor();
     }
</script>
</head>
<body >
    
    <%@ include file="../head.jsp" %>	
	<%@ include file="../left.jsp" %>	
	<section class="rt_wrap content mCustomScrollbar">
   <div class="rt_content">	      	
	    
	
	<br/><br/><br/>
 <div  class="">	   
<TABLE class="table table-bordered table-striped table-hover"> 	
  	<TR >
	    <TD align="center" >首页图片</TD>
	    <TD align="center" >链接地址</TD>  
	    <TD align="center" >操作</TD>
    </TR>
    
    <c:forEach items="${list}"  var="bean">
    <TR >    
	    <TD>
	   		<img src="<%=basePath %>uploadfile/${bean.path }" width="100" height="30" />
	    </TD>
	    <TD>
	    	${bean.href }
	    </TD>   
		<TD>	
	  		<a href="method!picupdate.action?id=${bean.id }">修改</a>  	
	    </TD>  
    </TR>
    </c:forEach> 
 </TABLE>   
</div>
</section>
</body>
</html>

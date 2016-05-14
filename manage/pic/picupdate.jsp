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
	    

	<div id="container">
		<div id="nav_links" align="left">
		<br/>
			当前位置：${title }			
		</div>
		<br/>
	<div class="ui_content">			
<form action="${url }" method="post"  enctype="multipart/form-data">
<TABLE class="table table-bordered table-striped table-hover">  
    <TR >
	    <TD >首页图片：</TD>
	    <TD ><img src="<%=basePath %>uploadfile/${bean.path }" width="200" height="60" /></TD>
    </TR>
    
    <TR>
	    <TD >重新上传首页图片：</TD>
	    <TD >  <input   name="uploadfile"  type="file"  id='uploadfileid'  size="20"  /></TD>
    </TR>
    
    <TR >
	    <TD>图片链接地址:</TD>
	    <TD >  <input  type="text" name="href"    size="50" value="${bean.href }" /> </TD>
    </TR>
    

    <TR >
    <TD > 操作：</TD>
    <TD > 
     <input type="submit" value="提交" style="width: 60px" class="btn btn-success"/>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	 <input  onclick="javascript:history.go(-1);" style="width: 60px" type="button" value="返回" class="btn "/>    
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

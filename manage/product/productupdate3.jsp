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
       $("a[href='method!productlist.action']").addClass("active");}
        window.onload=function(){       
         buttonColor();
     }
</script>
</head>
<body >
      <%@ include file="../head.jsp" %>
    
    
    <!-- side menu start -->
	
	<%@ include file="../left.jsp" %>
	
    <!-- side menu start -->
   
  <section class="rt_wrap content mCustomScrollbar">
   <div class="rt_content">	      	
	    
   
      	

	<div id="container">
		<div id="nav_links" align="center">
		<br />
			当前位置：${title }
		<br />	
		</div>
		<div class="ui_content">
			
			<form action="${url }" method="post" onsubmit="return checkform()"  enctype="multipart/form-data">
<TABLE class="table table-bordered table-striped table-hover">
  
  
  	
  	
    <TR height=>
    <TD align="center" >产品信息:</TD>
    <TD align="center"> 
    <textarea id="content1" name="content1" style="display: none;">${bean.info }</textarea>
				<iframe ID="eWebEditor" src="<%=basePath %>editor/ewebeditor.htm?id=content1" frameborder="0" scrolling="no" width="950" height="350"></iframe>
 
    </TD>
    </TR>
    
   
  

    <TR height=>
    <TD align="center" > 操作：</TD>
    <TD align="center"> 
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

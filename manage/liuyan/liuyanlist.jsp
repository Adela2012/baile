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
       $("a[href='method!liuyanlist.action']").addClass("active");}
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
   
      	

	<table class="table " >
  <tr>
    <td height="22" colspan="4" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"><div align="center">${title }</div></td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#FFFFFF" class="STYLE1">
    
    <form action="${url }" method="post">


留言标题：<input name="biaoti" type="text"  value="${biaoti }">
<input type="submit"  value="查询" class="btn "/>
</form>

<TABLE class="table table-bordered table-striped table-hover">
  	
  	<TR >
    <TD align="center" >留言标题</TD>
    <TD align="center" >留言用户</TD>
    <TD align="center" >留言时间</TD>
    <TD align="center" >答复状态</TD>
    <TD align="center" >答复时间</TD>
    <TD align="center" >操作</TD>
    
   
    </TR>
    <c:forEach items="${list}"  var="bean">

    <TR >
    
    <TD align="center" >
    ${bean.biaoti }&nbsp; 
    </TD>
    <TD align="center" >
    ${bean.user.username }&nbsp; 
    </TD>
    <TD align="center" >
    ${bean.shijian1 }&nbsp; 
    </TD>
    <TD align="center" >
    ${bean.zhuangtai }&nbsp; 
    </TD>
    <TD align="center" >
    ${bean.shijian2 }&nbsp; 
    </TD>
    
	<TD align="center" >
    <a href="${url2 }update3.action?id=${bean.id }">查看</a> &nbsp; &nbsp; &nbsp;
  	<a href="${url2 }update.action?id=${bean.id }">答复</a> 

    </TD>
    
   
    </TR>
    </c:forEach>
    
    <TR >
    <TD align="center" colspan="21" >${pagerinfo }</TD>

  	
    </TR>
    
    
    </TABLE>
    
    </td>
  </tr>
</table>


       </div>
</section>

</body>
</html>

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
</head>
<body >
    
    <%@ include file="../head.jsp" %>
    
    
    <!-- side menu start -->
	
	<%@ include file="../left.jsp" %>
	
    <!-- side menu start -->
   
    <div id="main">
   
      	

	<table class="table " >
  <tr>
    <td height="22" colspan="4" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"><div align="center">${title }</div></td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#FFFFFF" class="STYLE1">
    
    <form action="${url }" method="post">
&nbsp;&nbsp;&nbsp;&nbsp;
销售日期：<input name="riqi" type="text"  value="${riqi }">
<input type="submit"  value="查询" class="btn "/>
</form>

<TABLE class="table table-bordered table-striped table-hover">
  	
  	<TR >
    <TD align="center" >销售日期</TD>
    <TD align="center" >销售金额</TD>
    
    
   
    </TR>
    <c:forEach items="${list}"  var="bean">

    <TR >
    
    <TD align="center" >
    ${bean.riqi }&nbsp; 
    </TD>
    <TD align="center" >
    ${bean.jine }&nbsp; 
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

</body>
</html>

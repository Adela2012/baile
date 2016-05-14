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
       $("a[href='method!newslist.action']").addClass("active");}
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
    <td height="22" colspan="4" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"><div align="center">${title2 }</div></td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#FFFFFF" class="STYLE1">
    
    <form action="${url }" method="post">
    <input class='btn btn-primary' type='button' value="添加新文章"  onclick="javascript:window.location.href='${url2 }add.action';"/>
&nbsp;&nbsp;&nbsp;&nbsp;
文章名称：<input name="title" type="text"  value="${title }">
<input type="submit"  value="查询" class="btn btn-info"/>
</form>
</div>
<TABLE class="table table-bordered table-striped table-hover">
  	
  	<TR >
    <TD >类型</TD>
    <TD >标题</TD>
    <TD >来源</TD>
    <TD >时间</TD>
    <TD >点击</TD>
    <TD >状态</TD>
    <TD >操作</TD> 
    </TR>
    
   <c:forEach items="${list}"  var="bean">
    <TR >
    <TD >${bean.newsType }</TD>
    <TD >${bean.title }</TD>
    <TD >${bean.source}</TD>
    <TD >${bean.time }</TD>
    <TD >${bean.count }</TD>
    <TD >${bean.deletestatus }</TD>
    <TD >
	    <a href="${url2 }update.action?id=${bean.id }">修改</a> &nbsp; &nbsp; &nbsp;
	  	<a href="${url2 }delete.action?id=${bean.id }" onclick="return confirm('确定要删除吗?'); ">删除</a>
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

<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
       $("a[href='method!dingdanlist.action']").addClass("active");}
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
&nbsp;&nbsp;&nbsp;&nbsp;
订单号：<input name="orderid" type="text"  value="${orderid }" size="50">
<input type="submit"  value="查询" class="btn "/>
</form>
</div>
<TABLE class="table table-bordered table-striped table-hover">
  	
  	<TR >
    <TD align="center" >订单号</TD>
    <TD align="center" >收件人姓名</TD>
    <TD align="center" >订单状态</TD>
    <TD align="center" >总价</TD>
    <TD align="center" >生成时间</TD>
    <TD align="center" >操作</TD>
    
   
    </TR>
    <c:forEach items="${list}"  var="bean">

    <TR >
    
    <TD align="center" >
    ${bean.orderid }&nbsp; 
    </TD>
    <TD align="center" >
    ${bean.sjname }&nbsp; 
    </TD>
    <TD align="center" >
    ${bean.status }&nbsp; 
    </TD>
    <TD align="center" >
    ${bean.zongjia }&nbsp; 
    </TD>
    <TD align="center" >
    ${fn:substring(bean.createtime,0, 19)}&nbsp; 
    </TD>
    
	<TD align="center" >
    <a class=cmdField href="${url2 }update3.action?id=${bean.id }">查看</a> &nbsp; &nbsp; &nbsp;
	<c:if test="${bean.status=='未处理'}">
	<a onclick="return confirm('确定要处理吗？');" class=cmdField href="${url2 }delete.action?id=${bean.id }">处理订单</a>
	&nbsp; &nbsp; &nbsp;
	<a onclick="return confirm('确定要处理吗？');" class=cmdField href="${url2 }delete2.action?id=${bean.id }">取消订单</a>
	</c:if>
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

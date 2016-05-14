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
    <%@ include file="../btn.jsp" %>
    <%@ include file="../head.jsp" %>
    
    
    <!-- side menu start -->
	
	<%@ include file="../left.jsp" %>
	
    <!-- side menu start -->
   
    <section class="rt_wrap content mCustomScrollbar">
   <div class="rt_content">	
   
      	

	<table class="table ">
  <tr>
    <td height="22" colspan="4" background="images/bg.gif" bgcolor="#FFFFFF" class="STYLE3"><div align="center">${title }</div></td>
  </tr>
  <tr>
    <td colspan="4" bgcolor="#FFFFFF" class="STYLE1">
    
    <form action="${url }" method="post">
    <input class='btn btn-primary' type='button' value="添加新产品"  onclick="javascript:window.location.href='${url2 }add.action';"/>
&nbsp;&nbsp;&nbsp;&nbsp;
产品名：<input name="pname" type="text"  value="${pname }">
<input type="submit"  value="查询" class="btn "/>
</form>

<TABLE class="table table-bordered table-striped  table-hover">
  	
  	<TR >
    <TD align="center" >一级分类</TD>
    <TD align="center" >二级分类</TD>
    <TD align="center" >供应商</TD>
    <TD align="center" >产品名</TD>
    <TD align="center" >原价</TD>
    <TD align="center" >促销价</TD>
    <TD align="center" >精品推荐</TD>
    <TD align="center" >销量</TD>
    <TD align="center" >添加时间</TD>
    <TD align="center" >操作</TD>
    
   
    </TR>
    <c:forEach items="${list}"  var="bean">

    <TR >
    
    <TD >
    ${bean.fenlei.fenlei.fname }
    </TD>
    <TD  >
    ${bean.fenlei.fname }
    </TD>
    <TD >
    ${bean.gys.gname }
    </TD>
    <TD >
    ${bean.pname }
    </TD>
    <TD >
    ￥${bean.price1 }
    </TD>
    <TD>
    ￥${bean.price2 } 
    </TD>
    <TD >
    ${bean.tuijian }
    </TD>
    <TD >
    ${bean.xiaoliang }
    </TD>
    <TD >
    ${bean.createtime }
    </TD>
    
	<TD align="center" >
    <a href="../indexmethod!product.action?id=${bean.id }" target="_blank" >查看</a> &nbsp;
  	<a href="${url2 }update.action?id=${bean.id }">修改</a> &nbsp; 
  	<a href="${url2 }delete.action?id=${bean.id }" onclick="return confirm('确定要删除吗?'); ">删除</a>&nbsp; 
  	<a href="${url2 }update3.action?id=${bean.id }" >产品信息</a>&nbsp; 
  	<c:if test="${bean.tuijian!='已推荐'}">
    <a href="${url2 }delete2.action?id=${bean.id }" onclick="return confirm('确定要推荐吗?'); ">精品推荐</a>&nbsp; 
    </c:if>
    <c:if test="${bean.tuijian=='已推荐'}">
    <a href="${url2 }delete3.action?id=${bean.id }" onclick="return confirm('确定要取消推荐吗?'); ">取消推荐</a>
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

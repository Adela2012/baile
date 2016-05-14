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
   <script language="javascript" type="text/javascript">

function checkform()
{

	if (document.getElementById('titleid').value=="")
	{
		alert("标题不能为空");
		return false;
	}
	
	return true;
	
}


</script>
   
	
	<%@ include file="../left.jsp" %>
 
    <section class="rt_wrap content mCustomScrollbar">
   <div class="rt_content">	      	
	    

	<div id="container">
		<div id="nav_links" align="center">
		<br />
			当前位置：${title2 }			
		</div>
		<br/>
		<div class="ui_content">	
				
<form action="${url }" method="post" onsubmit="return checkform()">
<TABLE class="table table-bordered table-striped table-hover">
  	
  	<TR >
    <TD >文章标题:</TD>
    <TD > <input  type="text" name="title"  id='titleid'  size="30"  /></TD>
    </TR>
    
     <TR >
	    <TD >文章类型:</TD>
	    <TD > <input  type="text" name="newsType"  id='newsTypeid'  size="30"  /> </TD>
    </TR>
    
    <TR >
	    <TD >文章来源:</TD>
	    <TD > <input  type="text" name="source"  id='sourceid'  size="30"  /> </TD>
    </TR>
    
    <TR >
	    <TD  >文章图片：</TD>
	    <TD align="center"><input   name="uploadfile"  type="file"  id='uploadfileid'  size="20"  /></TD>
    </TR>
    
    <TR >
	    <TD >文章内容:</TD>
	    <TD > <textarea rows="7" cols="50"  name="neirong"  id='neirongid' ></textarea> </TD>
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

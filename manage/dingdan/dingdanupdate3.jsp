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
   
      	

	<div id="container">
		<div id="nav_links" align="center">
		<br/>
			当前位置：${title }
			
		</div>
		<br/>
		<div class="ui_content">
			
			<form action="${url }" method="post" onsubmit="return checkform()">
<TABLE class="table table-bordered table-striped table-hover">
  	
  	<TR>
                  
                  <TH class=gridViewHeader scope=col>订单号:</TH>
                  <TH class=gridViewHeader scope=col>
           ${bean.orderid }
                  </TH>

                </TR>
                
                
                <TR>
                  
                  <TH class=gridViewHeader scope=col>收件人姓名:</TH>
                  <TH class=gridViewHeader scope=col>
                ${bean.sjname }
                  </TH>

                </TR>
                
                
                <TR>
             
                  <TH class=gridViewHeader scope=col>收件人地址:</TH>
                  <TH class=gridViewHeader scope=col>
                  ${bean.address }
                  </TH>

                </TR>
                
            
                
                <TR>
             
                  <TH class=gridViewHeader scope=col>收件人手机:</TH>
                  <TH class=gridViewHeader scope=col>
                   ${bean.phone }
 
                  </TH>

                </TR>
                
                
                <TR>
              
                  <TH class=gridViewHeader scope=col>总价:</TH>
                  <TH class=gridViewHeader scope=col>
              ${bean.zongjia }￥
                  </TH>

                </TR>
                
                
               
                
                
                <TR>
         
                  <TH class=gridViewHeader scope=col>添加时间:</TH>
                  <TH class=gridViewHeader scope=col>
                 ${fn:substring(bean.createtime,0, 19)}
                  </TH>

                </TR>
                
                
                <TR>
         
                  <TH class=gridViewHeader scope=col>订单状态:</TH>
                  <TH class=gridViewHeader scope=col>
                 ${bean.status }
                  </TH>

                </TR>
                
                
                <TR>
           
                  <TH class=gridViewHeader scope=col>订单详情:</TH>
                  <TH class=gridViewHeader scope=col>
               ${bean.xiangqing }
                  </TH>

                </TR>


    <TR height=>
    <TD align="center" > 操作：</TD>
    <TD align="center"> 
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

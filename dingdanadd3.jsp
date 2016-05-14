<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html lang="en">
	<HEAD>
		<TITLE>
			上虞市百乐园林工程有限公司
		</TITLE>

		<link href="main.css" rel="stylesheet" type="text/css" />
		<link href="./css/style.css" rel="stylesheet" type="text/css" />
		<link href="./css/table.css" rel="stylesheet" type="text/css" />
	</HEAD>
	<BODY>
		<%@ include file="head.jsp" %>
		<!-- crumb  -->
		<div class="crumb" id="crumb">
				您现在的位置：<a href=".">首页</a>&gt;
				<strong class="now">填写收货信息</strong>
		</div>
		
<div  class="tablebox">			
		
		<DIV class="wrapper lazybox excel-recom">
			<H2>
				直接购买${pro.pname }
			</H2>
			<form action="indexmethod!dingdanadd4.action?pid=${pro.id }" method="post">
    	<table class="table table-bordered table-striped ">
    	<tr>
    	<td align="center" width="40%">
    	<span style="font-weight: bold;font-size: 20px;">收货信息：</span>
    	</td>
    	<td>
    	<select name="sid">
      <c:forEach items="${list}" var="bean">
       <option value="${bean.id }">
       收货人：${bean.truename }&nbsp;&nbsp;&nbsp;
       联系电话：${bean.phone }&nbsp;&nbsp;&nbsp; 
       收货地址：${bean.address }&nbsp;&nbsp;&nbsp;
      
       </option>
      </c:forEach>
     </select>
    	</td>
    	</tr>
    	
    	<tr>
    	<td align="center">
    	<span style="font-weight: bold;font-size: 20px;">备注：</span>
    	</td>
    	<td>
    	<textarea rows="7" cols="50" name="beizhu"></textarea>
    	</td>
    	</tr>
    	
    	
    	
    	
    	
    	
    	
    	<tr>
    	
    	
    	<td colspan="2" align="center">  
    	<input type="submit" value="提交" class="btn btn-success"/>
    	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    	<input type="reset" value="重置" class="btn btn-danger"/>
    	</td>
    	</tr>
    	
    	</table>
    	
    	</form>
			
			
			
			
			
			
			
			
			
			
		</DIV>
		
		
		
		</div>
		
		
		
		
		
		

		
		
		
		<%@include file="footer.jsp" %>
		<%@include file="foot.jsp" %>
		
		
		<SCRIPT language=javascript type=text/javascript>var memberDomain = 'http://member.ehaier.com';</SCRIPT>
		
		
	<SCRIPT type=text/javascript src="_files/jquery-1.8.2.min.js"></SCRIPT>	
		

	<SCRIPT type=text/javascript src="_files/base.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/index.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/head.min.js"></SCRIPT>
		
		
		
	</BODY>
</HTML>


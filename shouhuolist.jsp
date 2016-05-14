<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
				<strong class="now">我的收货信息</strong>
		</div>
		
		
<div  class="tablebox">		
		<DIV class="wrapper lazybox excel-recom">
			<H2>
				收货信息
			</H2>
			<p class="btn " text-align="right">
			<span onclick="showadd()"  style="font-size: 15px;font-weight: bold;" >添加新收货信息</span>
			</p>
			<form action="indexmethod!shouhuoadd2.action" method="post" onsubmit="return check()" >
				<table id="tableadd" class="table table-bordered table-striped hidden" >
	    	    <tr><th >收货人姓名</th><th >电话</th><th >详细地址</th><th >操作</th></tr>
				<tr >
			       <td><input type="text" name="truename" id="truenameid" style="width:15%; border:none;"></td>
			       <td><input type="text" name="phone" id="phoneid" style="width:25%; border:none;"></td>
			       <td><input type="text" name="address" id="addressid" style="width:46%; border:none;"></td>
			       <td  >
			          <input type="submit" class="btn btn-info btn-xs" value="增加">&nbsp;
			          <input type="button" onclick="hideadd()" class="btn btn-primary btn-xs" value="取消">
			       </td>
			     </tr> 
			     </table>
			</form>
    	<table class="table table-bordered table-striped table-hover">
    	<tr><th >收货人姓名</th><th >电话</th><th >详细地址</th><th >操作</th></tr>
    	
    	<c:forEach items="${list}"  var="bean">
    	<tr>
	    	<td ><span>${bean.truename }</span></td><td >${bean.phone }</td><td >${bean.address }</td>
			<td >
				<a href="${url2 }update.action?id=${bean.id }" class="btn btn-success btn-xs">修改</a> &nbsp;
			  	<a href="${url2 }delete.action?id=${bean.id }" class="btn btn-danger btn-xs">删除</a>
			</td>
		</tr>
		
		</c:forEach>
		


<tr><td  align="center" colspan="4"><span style="font-weight: bold;font-size: 12px;">${pagerinfo }</span></td></tr>

    	
    	
    	</table>
 		
			
		</DIV>
		
	</div>	
		
		
		
		
		
		
		

		<%@include file="footer.jsp" %>
		<%@include file="foot.jsp" %>
		
		
		
		<SCRIPT language=javascript type=text/javascript>var memberDomain = 'http://member.ehaier.com';</SCRIPT>
		
		
	<SCRIPT type=text/javascript src="_files/jquery-1.8.2.min.js"></SCRIPT>	
		

	<SCRIPT type=text/javascript src="_files/base.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/index.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/head.min.js"></SCRIPT>
		
		<script type="text/javascript">
function showadd(){

   $("#tableadd").removeClass("hidden");
   $("#tableadd").addClass("show");
}
function hideadd(){
  $("#tableadd").removeClass("show");
   $("#tableadd").addClass("hidden");
  
}
function check()
{
	
	if (document.getElementById('truenameid').value=="")
	{
		alert("收货人姓名不能为空");
		return false;
	}
	if (document.getElementById('addressid').value=="")
	{
		alert("收货地址不能为空");
		return false;
	}
	if (document.getElementById('phoneid').value=="")
	{
		alert("联系电话不能为空");
		return false;
	}
	
	valid=/^0?1[3,5,8][0,1,2,3,4,5,6,7,8,9]\d{8}$/;  
	if(!valid.test(document.getElementById('phoneid').value)){
		alert("请输入正确的联系电话格式");
		return false;
	}
	
	
	return true;
}


//修改按钮事件
function chg()
{
        $("input[value='修改']").click(
            function(){
               if($(this).val()=="修改"){
                   $(this).val("确定");
                   var tds= $(this).parent().siblings();
                   for(var i=0;i<tds.length;i++){
                       var $td=$(tds[i]);
                       $td.html("<input value="+$td.text()+">");
                   }

               }else{
                  $(this).val("修改");
                   var tds= $(this).parent().siblings();
                   for(var i=0;i<tds.length;i++){
                       var $td=$(tds[i]);
                       var $ipt=$($td.children()[0]);
                       $td.text($ipt.val());
                   }
               }
            }
         );
      }
</script>
		
		
	</BODY>
</HTML>


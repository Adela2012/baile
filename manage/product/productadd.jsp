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
    
   
<script language="javascript" type="text/javascript">

function checkform()
{
	if (document.getElementById('pnameid').value=="")
	{
		alert("产品名不能为空");
		return false;
	}	
	if (document.getElementById('uploadfileid').value=="")
	{
		alert("产品图片不能为空");
		return false;
	}

	var v1 = document.getElementById("price1id").value;
	var v2 = document.getElementById("price2id").value;
	if(v1==""){
		alert('原价不能为空');
		return false;
	}

	 if(isNaN(v1)){ //数字 
	 	alert('原价必须是数字');
		return false;
	 }
	 
	  if(v1<0){
		alert('原价不能为负数');
		return false;
	}
	 
	 if(v2!=""){
		 if(isNaN(v2)){ //数字 
	 	alert('促销价必须是数字');
		return false;
	 }
	 
	  if(v2<0){
		alert('促销价不能是负数');
		return false;
	 }

	 if(eval(v1)<=eval(v2)){
	 	alert('原价必须大于促销价');
		return false;
	 }
	 
	}	
	return true;	
}


</script>
	
	<%@ include file="../left.jsp" %>
  <section class="rt_wrap content mCustomScrollbar">
   <div class="rt_content">	

	<div id="container">
		<div id="nav_links" align="center">
		<br/>
			当前位置：${title }
			
		</div>
		<br/>
		<div class="ui_content">
			
<form action="${url }" method="post" onsubmit="return checkform()"  enctype="multipart/form-data">
<TABLE class="table table-bordered table-striped table-hover">
<script type="text/javascript">
    var req;  
    function Change_Select(selectedId){//当第一个下拉框的选项发生改变时调用该函数
      var now = new Date();
      var url = "method!getcate.action?pid="+selectedId+"&t="+now.getTime();
      if(window.XMLHttpRequest){
        req = new XMLHttpRequest();
      }else if(window.ActiveXObject){
        req = new ActiveXObject("Microsoft.XMLHTTP");
      }
      if(req){
        //指定回调函数为callback
      	req.onreadystatechange = callback;
        req.open("GET",url,true);
        req.send(null);
      }
    }
    //回调函数
    function callback(){
      if(req.readyState ==4){
        if(req.status ==200){
          parseMessage();//解析XML文档
        }else{
          alert("不能得到描述信息:" + req.statusText);
        }
      }
    }
    //解析返回xml的方法
    function parseMessage(){
      var xSel = req.responseXML.getElementsByTagName('select');//获得返回的XML文档
      //获得XML文档中的所有<select>标记
      var select_root = document.getElementById('cid');
      //获得网页中的第二个下拉框
      select_root.options.length=0;
      //每次获得新的数据的时候先把每二个下拉框架的长度清0    
      for(var i=0;i<xSel.length;i++){
        var xValue = xSel[i].childNodes[0].firstChild.nodeValue;
        //获得每个<select>标记中的第一个标记的值,也就是<value>标记的值
        var xText = xSel[i].childNodes[1].firstChild.nodeValue;
        //获得每个<select>标记中的第二个标记的值,也就是<text>标记的值
        var option = new Option(xText, xValue);
        //根据每组value和text标记的值创建一个option对象      
        try{
          select_root.add(option);//将option对象添加到第二个下拉框中
        }catch(e){
        }
      }
    }       
</SCRIPT>
   	<TR >
    <TD >分类:</TD>
    <TD > 
   <select name="pid" id="pid" onchange="Change_Select(this.value)">
					     <option value="0">请选择一级分类</option>
					   <c:forEach items="${fenleilist}" var="fenlei">
					   <option value="${fenlei.id }">${fenlei.fname }</option>
					    </c:forEach>
					    </select>
   <select name="fenlei" id="cid">                          		
                                <option value="0">
                                   	请选择二级分类
                                </option>
   </select>	
    </TD>
    </TR>   
    <TR >
    <TD >供应商:</TD>
    <TD > 
    <select name="gys">
   <c:forEach items="${gyslist}" var="gys">
   <option value="${gys.id }">${gys.gname }</option>
   </c:forEach>   
   </select> 
    </TD>
    </TR>    
    <TR >
    <TD >产品名:</TD>
    <TD > 
    <input  type="text" name="pname"  id='pnameid'  size="30"  /> 
    </TD>
    </TR>   
    <TR >
    <TD  >产品图片：</TD>
    <TD align="center"> 
    <input   name="uploadfile"  type="file"  id='uploadfileid'  size="20"  />
    </TD>
    </TR>
    
    <TR>
    <TD >原价:</TD>
    <TD> 
    <input  type="text" name="price1"  id='price1id'  size="30"  />
    </TD>
    </TR>
    
    <TR>
    <TD >促销价:</TD>
    <TD > 
    <input  type="text" name="price2"  id='price2id'  size="30"  />
 
    </TD>
    </TR>
    
    
     <TR >
    <TD >产品概述:</TD>
    <TD > 
   <textarea rows="7" cols="50"  name="gaishu"></textarea>
 
    </TD>
    </TR>
    
  

    <TR>
    <TD > 操作：</TD>
    <TD> 
     <input type="submit" value="提交" style="width: 60px" class="btn btn-success" />
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

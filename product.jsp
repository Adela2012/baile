<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">


<title>商品详情</title>
<link type="text/css" rel="stylesheet" media="all" href="_files2/base-1000.css">
<link type="text/css" rel="stylesheet" media="all" href="_files2/product_v4.css">
<link href="_files2/haiershangcheng.css" rel="stylesheet" type="text/css">
<link href="./css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>


<!-- 公共头开始 -->

<%@ include file="head.jsp" %>

<!-- 公共头结束 -->
        
<div class="bigwrapper">
	<div class="wrapper all-cont-box">
	
	
		<!-- crumb  -->
		<div class="crumb" id="crumb">
				您现在的位置：<a href=".">首页</a>&gt;
					<a href="indexmethod!productlist.action?tid=${product.fenlei.fenlei.id }">${product.fenlei.fenlei.fname }</a>&gt;
					<a href="indexmethod!productlist.action?fid=${product.fenlei.id }">${product.fenlei.fname }</a>&gt;
				<strong class="now">${product.pname }</strong>
		</div>
	
		<!-- product-info-box -->
		<div class="product-info-box clearfix">
			<!-- product-info -->
			<div class="product-info" id="product_info">
<h1 class="product-title"><span class="s-title">${product.pname }</span></h1>
<h2 class="product-abs">${product.gaishu }</h2>

<c:if test="${product.price1!=product.price2 }">
	<ul class="product-info-list">
	<li>
		<span class="s-title">原&nbsp;&nbsp;价：</span>
		<strong >￥${product.price1 }</strong>
	</li>
	</ul>		
</c:if>	
	
	<ul class="product-info-list">
		<li>
			<span class="s-title">商 城 价：</span>
			<strong class="haierred cur-price">￥${product.price2 }</strong>
		</li>
		<li><span class="s-title">已 售 出：</span><em class="blue">${product.xiaoliang }</em></li>
		<li><span class="s-title">供 应 商：</span><em class="blue">${product.gys.gname }</em></li>
	    <li class="li-services"><span class="s-title">服&nbsp;&nbsp;务：</span><em class="em-services-style"><b class="b-cach-pay" style="display:none;">货到付款，</b>
			只送绍兴、上虞， 苗圃直运， 专人开车配送，指定日期送达。其他地区物流送达。
			<!-- -->			
		</em><a class="a-online-services a-openKF" href="#" rel="nofollow">在线客服</a></li>		
	</ul>
	
	<div class="deliverybox clearfix">	
		<form action="."  method="post"  id="buyForm">	
			<p class="p-delivery">
				<span class="s-title">我要买：</span>
				<span class="s-pro-num" unselectable="on" style="-webkit-user-select:none;-moz-user-select:none;" onselectstart="return false"><em class="em-sub">-</em><input type="text" class="txt txt-num" name="num" id="buyNum" value="1"><em class="em-add">+</em></span>
			</p>				
			<p class="p-product-btn">
							<a class="a-to-buy js_buy_now" href="indexmethod!dingdanadd3.action?pid=${product.id }" id="buy_Now">立即购买</a>
							&nbsp;&nbsp;&nbsp;&nbsp;
							<a href="indexmethod!gouwucheadd.action?id=${product.id }"><img src="images/gwc.jpg" border="0" width="120" height="40"></img></a>							
					</p>
					
		  <p></p>
		  	
		  
		</form>
	</div>
	<p class="p-share-fav">
	
	<a class="a-fav-product" rel="nofollow" href="indexmethod!shoucangadd.action?id=${product.id }">收藏此商品</a></p>
	<br/>
	
	
			</div>
			
			
			<!-- 大图相册 -->
			<div class="product-gallerybox">
<div class="gallery-bigshow">
	<div class="gallery-showBox"> 
			<img class="img-bigshow" width="380" height="380" src="<%=basePath %>/uploadfile/${product.imgpath }" >
			

	
	
	
	</div>
	
</div>
		

</div>
		</div>
	
		
			
			
			<!-- product-info-box -->
			<div class="product-details-box">
<div class="details-bar"><div class="bfd_border_left"><div class="bfd_header">您可能还喜欢</div>
<ul class="bfd_show_list">

<c:forEach items="${list}" var="bean">
<li>
<a href="indexmethod!product.action?id=${bean.id }" target="_blank" class="bfd_img">
<img  src="<%=basePath %>/uploadfile/${bean.imgpath }">
</a>
<h3 class="bfd_title">
<a href="indexmethod!product.action?id=${bean.id }"  target="_blank">${bean.pname }</a>
</h3>
<h4 class="bfd_price">￥${bean.price2 }</h4>
</li>
</c:forEach>
</ul></div></div>

<div id="details-cont-main" class="details-cont-main">
	<div class="details-tab-title" style="position: static; left: auto; top: auto;z-index: 0;">
		<ul class="ul-details-tab">
			<li class="li-tab li-now"><h2>商品详情</h2></li>
			<li class="li-tab"><h2>累计评价(0)</h2></li>
		</ul>
	</div>
	<ul class="ul-details-tips">
		<li class="li-tips">特色：租赁服务、绍兴上虞周边地区送货上门</li>
		<li class="li-tips">配送：百乐物流及快递 </li>
		<li class="li-tips">区域：绍兴上虞及附近周边地区　　</li>
		<li class="li-tips">售后：七天退换</li>
	</ul>
	
	
	${product.info }
	<div class="details-cont details-proinfo details-cont-now" style="display: block;">	
	<div class="goodsIntroBox">
	${product.info }	
	<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
	
	
	</div>	
	
	</div>
	
	

	

	
		
	

	
	
	</div>			</div>
		
			</div>
</div>





<!--百分点代码：单品页-->



<!-- 公共尾开始 -->






        <%@include file="footer.jsp" %>
		<%@include file="foot.jsp" %>







<!-- google [2] -->


<!-- 公共尾结束-->


</body></html>


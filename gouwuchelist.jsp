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


<title>上虞市百乐园林工程有限公司</title>
<link type="text/css" rel="stylesheet" media="all" href="_files2/base-1000.css">
<link type="text/css" rel="stylesheet" media="all" href="_files2/product_v4.css">
<link href="_files2/haiershangcheng.css" rel="stylesheet" type="text/css">
<link href="./css/style.css" rel="stylesheet" type="text/css" />
</head>
<body>


<!-- 公共头开始 -->

<DIV class=all-header-bar>
			<DIV class=wrapper>
				
				<A class="a-fav-ehaier js-addtofav" onclick=shoucang(document.title,window.location) href="javascript:void(0)">收藏本网站</A>
				<A class="" href="about.jsp" >关于百乐</A>
				<DIV class=p-header-bar>
					<UL class=ul-topnav>
						<LI >
					<c:if test="${shop==null}">
							欢迎来到百乐
							<A class=a-header-bar href="login.jsp" > 快速登录</A>|
							<A class=a-header-bar href="register.jsp" >
								免费注册 </A>|
								</c:if>
						<c:if test="${shop!=null}">
						欢迎<span color="green">&nbsp; ${shop.username } &nbsp;</span>来到百乐<A class=a-header-bar href="indexmethod!loginout.action"  onclick="return confirm('确定要退出吗?'); "> 安全退出</A>
						</c:if>
						</LI>
						<c:if test="${shop!=null}">
						<LI class=ul-pulldown>
							<A class=a-header-bar href="indexmethod!dingdanlist.action" >我的订单</A>
						</LI>
						<LI>
							|
							<A class="a-header-bar a-header-to-services" href="indexmethod!shoucanglist.action" >我的收藏</A>
							|
							<A class="a-header-bar a-header-to-services" href="indexmethod!liuyanlist.action" >我的留言</A>
							|
							<A class="a-header-bar a-header-to-services" href="indexmethod!shouhuolist.action" >收货信息</A>
							|
							<A class="a-header-bar a-header-to-services" href="indexmethod!userupdate.action" >个人信息</A>
							|
							<A class="a-header-bar a-header-to-services" href="indexmethod!userupdate3.action" >会员信息</A>
						
						</LI>
						</c:if>
					</UL>
				</DIV>
			</DIV>
		</DIV>

<script type="text/javascript" language="javascript">		
		function shoucang(sTitle,sURL) 

{ 

try 

{ 

window.external.addFavorite(sURL, sTitle); 

} 

catch (e) 

{ 

try 

{ 

window.sidebar.addPanel(sTitle, sURL, ""); 

} 

catch (e) 

{ 

alert("加入收藏失败，请使用Ctrl+D进行添加"); 

} 

} 

}
</script>		
		
		<DIV class=all-header-cont>
			<DIV class=wrapper>
				<H1 class="h1-site lt">
					<A  href="." ref="ixv5-1-hd-2-a-0">
						<div class="logo">
							 <a href="."><img src="images/plants/logo11.jpg" alt=""/></a>
						</div>
					</A>
					
				</H1>
					<div class="rt">
					<ol class="ol-paysteps">
					<li class="cart-process li-mycart">我的购物车</li>
					<li class="cart-process li-checkorder">填写核对订单信息</li>
					<li class="cart-process li-suborder">成功提交订单</li>					
				    </ol>
			    </div>
				
			</DIV>
		</DIV>
		<DIV class=mainnav>
			<DIV class="clearfix wrapper">
				<UL class=ul-mainnav>
					<LI class="li-mainnav li-mainnav-0">
						<A href="." >首页</A>
					</LI>
					<LI class="li-mainnav li-mainnav-2">
						<A href="indexmethod!newslist.action" >技术资讯</A>
					</LI>
					<LI class="li-mainnav li-mainnav-2">
						<A href="indexmethod!noticelist.action" >网站公告</A>
					</LI>
					<LI class="li-mainnav li-mainnav-2">
						<A href="." >租赁案例</A>
					</LI>
					<LI class="li-mainnav li-mainnav-2">
						<A href="indexmethod!productlist.action?type=2" >新品首发</A>
					</LI>
					<LI class="li-mainnav li-mainnav-3">
						<A href="indexmethod!productlist.action?type=3" >热销推荐</A>
					</LI>
					<LI class="li-mainnav li-mainnav-4">
						<A href="indexmethod!productlist.action?tuijian=1" >精品推荐</A>
					</LI>

				</UL>
				
				<DIV class=all-category-box>
					<DIV class=h2-all-category>
						<A class=a-all-category href="." >绿植分类</A>
					</DIV>
					
					<%
org.springframework.web.context.WebApplicationContext app = org.springframework.web.context.support.WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());

com.dao.FenleiDao fenleiDao = (com.dao.FenleiDao) app.getBean("fenleiDao");

List<com.model.Fenlei> fenleilist = fenleiDao.selectBeanList(0,6," where deletestatus=0 and fenlei is null  ");

%>
  
					
					<DIV>
						<DIV class=all-category-list>
							
							<DL class=dl-category-item>
							
							<%
							if(fenleilist.size()>=1){
							%>
							<DT class=dt-category-item>
									<A href="indexmethod!productlist.action?tid=<%=fenleilist.get(0).getId() %>"  ><%=fenleilist.get(0).getFname() %></A>
								</DT>
								<%
								List<com.model.Fenlei> fenleilist2 = fenleiDao.selectBeanList(0,9999," where deletestatus=0 and fenlei.id=   "+fenleilist.get(0).getId());
								
									
								%>
								
								<DD class=dd-category-item>
								<%
								for(com.model.Fenlei fenlei:fenleilist2){
								%>
									<A
										href="indexmethod!productlist.action?fid=<%=fenlei.getId() %>" ><%=fenlei.getFname() %></A> |
								<%	
								}
								
								%>
									
									
								</DD>
							
							<% 	
							}
							%>
								
								
								
								<%
							if(fenleilist.size()>=2){
							%>
							<DT class=dt-category-item>
									<A href="indexmethod!productlist.action?tid=<%=fenleilist.get(1).getId() %>"  ><%=fenleilist.get(1).getFname() %></A>
								</DT>
								<%
								List<com.model.Fenlei> fenleilist2 = fenleiDao.selectBeanList(0,9999," where deletestatus=0 and fenlei.id=   "+fenleilist.get(1).getId());
								
									
								%>
								
								<DD class=dd-category-item>
								<%
								for(com.model.Fenlei fenlei:fenleilist2){
								%>
									<A
										href="indexmethod!productlist.action?fid=<%=fenlei.getId() %>" ><%=fenlei.getFname() %></A> |
								<%	
								}
								
								%>
									
									
								</DD>
							
							<% 	
							}
							%>
								
								
								
								
							</DL>
							
							
							<DL class=dl-category-item>
								
								<%
							if(fenleilist.size()>=3){
							%>
							<DT class=dt-category-item>
									<A href="indexmethod!productlist.action?tid=<%=fenleilist.get(2).getId() %>"  ><%=fenleilist.get(2).getFname() %></A>
								</DT>
								<%
								List<com.model.Fenlei> fenleilist2 = fenleiDao.selectBeanList(0,9999," where deletestatus=0 and fenlei.id=   "+fenleilist.get(2).getId());
								
									
								%>
								
								<DD class=dd-category-item>
								<%
								for(com.model.Fenlei fenlei:fenleilist2){
								%>
									<A
										href="indexmethod!productlist.action?fid=<%=fenlei.getId() %>" ><%=fenlei.getFname() %></A> |
								<%	
								}
								
								%>
									
									
								</DD>
							
							<% 	
							}
							%>
								
								
								
								
								<%
							if(fenleilist.size()>=4){
							%>
							<DT class=dt-category-item>
									<A href="indexmethod!productlist.action?tid=<%=fenleilist.get(3).getId() %>"  ><%=fenleilist.get(3).getFname() %></A>
								</DT>
								<%
								List<com.model.Fenlei> fenleilist2 = fenleiDao.selectBeanList(0,9999," where deletestatus=0 and fenlei.id=   "+fenleilist.get(3).getId());
								
									
								%>
								
								<DD class=dd-category-item>
								<%
								for(com.model.Fenlei fenlei:fenleilist2){
								%>
									<A
										href="indexmethod!productlist.action?fid=<%=fenlei.getId() %>" ><%=fenlei.getFname() %></A> |
								<%	
								}
								
								%>
									
									
								</DD>
							
							<% 	
							}
							%>
							</DL>
							
							
							<DL class=dl-category-item>
								
								
								<%
							if(fenleilist.size()>=5){
							%>
							<DT class=dt-category-item>
									<A href="indexmethod!productlist.action?tid=<%=fenleilist.get(4).getId() %>"  ><%=fenleilist.get(4).getFname() %></A>
								</DT>
								<%
								List<com.model.Fenlei> fenleilist2 = fenleiDao.selectBeanList(0,9999," where deletestatus=0 and fenlei.id=   "+fenleilist.get(4).getId());
								
									
								%>
								
								<DD class=dd-category-item>
								<%
								for(com.model.Fenlei fenlei:fenleilist2){
								%>
									<A
										href="indexmethod!productlist.action?fid=<%=fenlei.getId() %>" ><%=fenlei.getFname() %></A> |
								<%	
								}
								
								%>
									
									
								</DD>
							
							<% 	
							}
							%>
							
							
								<%
							if(fenleilist.size()>=6){
							%>
							<DT class=dt-category-item>
									<A href="indexmethod!productlist.action?tid=<%=fenleilist.get(5).getId() %>"  ><%=fenleilist.get(5).getFname() %></A>
								</DT>
								<%
								List<com.model.Fenlei> fenleilist2 = fenleiDao.selectBeanList(0,9999," where deletestatus=0 and fenlei.id=   "+fenleilist.get(5).getId());
								
									
								%>
								
								<DD class=dd-category-item>
								<%
								for(com.model.Fenlei fenlei:fenleilist2){
								%>
									<A
										href="indexmethod!productlist.action?fid=<%=fenlei.getId() %>" ><%=fenlei.getFname() %></A> |
								<%	
								}
								
								%>
									
									
								</DD>
							
							<% 	
							}
							%>
							</DL>
							
							
						
								
							
							
							
							
							
						</DIV>
					</DIV>
					
				</DIV>
				
				<DIV class="mini-cart js_cart">
					<a href="indexmethod!gouwuchelist.action"><img src="images/gwc2.JPG"></img></a>
				</DIV>
				
			</DIV>
		</DIV>			
		

<!-- 公共头结束 -->
        
<div class="bigwrapper">
	<div class="wrapper all-cont-box">
	
	
		<!-- crumb  -->
		<div class="crumb" id="crumb">
				您现在的位置：<a href=".">首页</a>&gt;		
				<strong class="now">购物车</strong>
		</div>
	
		
		<div class="bigwrapper">
	<div class="cart-main">
		
		<div style="margin-top:20px;"></div>
	    
		<h1 class="h1-carthead lt">我的购物车</h1>
		
		
		<div class="rt" style="margin-top:0px;margin-bottom:30px;">
					<ol class="ol-paysteps" style="margin-top:0px;margin-bottom:30px;">
					<li class="cart-process li-mycart">我的购物车</li>
					<li class="cart-process li-checkorder">填写核对订单信息</li>
					<li class="cart-process li-suborder">成功提交订单</li>					
				    </ol>
			    </div>
	    <div class="clr"></div>
	       <div class="clearfix"></div>
	    <div id="cartMain">


<form id="cartForm" name="cartForm" method="post" action="/cart.php?a=update" class="form-cart-account">
	<table class="table-cart">
    	<thead>
    		<tr class="tr-theadpart">
        		<th class="th-pro-name">商品</th>
            	<th class="th-thead"></th>
            	<th class="th-thead">价格</th>
            	<th class="th-thead">数量</th>
            	<th class="th-thead">已优惠</th>
            	<th class="th-thead">小计</th>
            	<th class="th-thead-operate">操作</th>
        	</tr>
        </thead>
        <tbody>
        	<c:forEach items="${list}"  var="bean">
        			<tr class="tr-goodsinfo">
	                	<td class="td-goodsinfo">
		                	<a href="" class="a-pro-img">
	                			<img width="52" height="60" src="<%=basePath %>/uploadfile/${bean.product.imgpath }" alt="${bean.product.pname }" title="${bean.product.pname }">
                			</a>
	                		<a href="indexmethod!product.action?id=${bean.product.id }" class="a-pro-name">${bean.product.pname }
	                		</a>
                		</td>
                		<td class="td-goodsinfo">ma</td>
                		<td class="cart-single-price td-goodsinfo">￥${bean.product.price2 }</td>
                		<td class="td-goodsinfo" unselectable="on" style="-webkit-user-select:none;-moz-user-select:none;" onselectstart="return false">
                        		<span class="s-single-minus">-</span>
	                        	<span><input type="text" name="sl"  value="${bean.sl }" id="${bean.id }_num"  size="5" autocomplete="off"   class="in-single-amount"></span>
		                        <span class="s-single-plus">+</span>
		                        <a href="javascript:;"  onclick="changenum(${bean.id })" style="color:white">变更</a> &nbsp;
                			<input type="hidden" name="cartId[]" value="10817631">
                			<input type="hidden" name="productId[]" value="11259">
                		</td>
                		<td class="cart-single-price td-goodsinfo">￥${zongjia-vip }</td>
                		<td class="cart-single-price td-goodsinfo">￥${bean.product.price2 * bean.sl}</td>
                		<td class="td-goodsinfo">
                				<span class="s-del-this"><a href="indexmethod!gouwuchedelete.action?id=${bean.id }" onclick=" return confirm('确定要删除吗?'); ">删除</a></span>
                		</td>
                    </tr>
       			</c:forEach>
        </tbody>
        <tfoot>
        	<tr>
            	<td class="td-recycle" colspan="7">           			
            		<a href="." class="a-clearall">清空购物车</a>
            		<p class="p-costcount">
	            		商品总计：<span class="cart-single-price">￥${zongjia }</span>
	            		- 优惠活动：<span class="cart-single-price">￥${zongjia-vip }</span> 
	            		= 订单总计：<span class="s-alltogether">
	            		<c:if test="${useruser.total>=5000}">会员价：￥${vip }</c:if></span>
            		</p>                
                </td>
            </tr>
        </tfoot>
    </table>
</form>	    </div>
	    <a href="." class="a-ctn-shopping">继续购物</a>
	    <a href="indexmethod!dingdanadd.action" class="a-imdtly-buy" id="flowButton">立即结算</a>
	    <!--<a href="flow.php#jiesuan" class="a-imdtly-buy" id="flowButton">立即结算</a>-->
	</div>
</div>
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
</div>
</div>




<!--百分点代码：单品页-->



<!-- 公共尾开始 -->






        <%@include file="footer.jsp" %>
		<%@include file="foot.jsp" %>
<script language="javascript" type="text/javascript">

function changenum(id){
		var num = document.getElementById(id+"_num").value;
		var reg1 =  /^\d+$/;
	if (num.match(reg1) == null)
	{
		alert("购买数量必须为正整数");
		return false;
	}
		if (num == 0 )
	{
		alert("购买数量必须大于0的正整数");
		return false;
	}
		var now = new Date(); 
		var t = now.getTime()+''; 
		window.location.href="indexmethod!gouwucheupdate.action?id="+id+"&sl="+num+"&t="+t;
		
		
	}

</script>






<!-- google [2] -->


<!-- 公共尾结束-->


</body></html>


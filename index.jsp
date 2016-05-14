<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.util.Util"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
			
			
			Util.init(request);
%>
<!DOCTYPE html>
<html lang="en">
	<HEAD>
		<TITLE>
			上虞市百乐园林工程有限公司
		</TITLE>
        
		<link href="main.css" rel="stylesheet" type="text/css" />
		<link href="./css/style.css" rel="stylesheet" type="text/css" />
		
	</HEAD>
	<BODY>
		
		
		
		<%@ include file="head.jsp" %>
		
		
		
		<SCRIPT language=javascript type=text/javascript>var memberDomain = '.';</SCRIPT>

		<DIV class="wrapper clearfix main-banner">
			<DIV class="delaybox banner-slidewrap">
				
				
				 <%
org.springframework.web.context.WebApplicationContext app2 = org.springframework.web.context.support.WebApplicationContextUtils.getWebApplicationContext(request.getSession().getServletContext());

com.dao.PicDao picDao = (com.dao.PicDao) app2.getBean("picDao");

List<com.model.Pic> piclist = picDao.selectBeanList(0,9999,"  ");

%>
				
				<%
				for(int i=0;i<piclist.size();i++){
				%>	
					
				<DIV class="slide-each slide-each-<%=i+1 %>">
				
					<A href="<%=piclist.get(i).getHref() %>" rel=nofollow  target=_blank >
					<%
					if(i==0){
					%>
					<IMG class=child0 src="uploadfile/<%=piclist.get(i).getPath() %>"    width=1600 height=425 / >
					<% 	
					}else{
					%>
					<IMG class=child0 src="uploadfile/03.jpg" width=1600 height=425 src3="uploadfile/<%=piclist.get(i).getPath() %>"/ >
					<%
					}
					%>
					
					</A>
				</DIV>
					
					
				<%	
				}
				
				%>
				
				
				
				
				
			</DIV>
		</DIV>


<!---->

<!---->

<div class="welcome">
	 <div class="container">
		 <div class="col-md-3 welcome-left">
			 <h2>欢迎来到百乐</h2>
		 </div>
		 <div class="col-md-9 welcome-right">
			 <h3>上虞市百乐园林工程有限公司</h3>
			 <p>上虞市百乐园林工程有限公司（简称百乐园林），位于著名的水乡、桥乡、酒乡、书法之乡、名士之乡绍兴。
			   致力于提供标准化、规范化及独具个性的园林服务，是一家专业从事盆栽植物销售、租赁、绿化设计、施工、养护的企业。
			 公司推出室内外花卉盆栽植物租赁业务，包括宾馆、写字楼、企事业单位及家庭的绿化布置。
			 可根据客户不同的要求提供绿色关叶植物，观花植物，鲜花插花，盆景等。
			 我们拥有专业的绿化设计团队与施工养护团队。
			 绍兴周边地区我们可以免费上门服务，其他地区的朋友如果量大我们可以商量，量小我们则看具体的植物是否方便托运。</p>
		 </div>
	 </div>
</div>
<!---->		
 <div class="clearfix"></div> <div class="clearfix"></div> <div class="clearfix"></div>
 <br/>
<!---->




	
				
				
<div class="bride-grids">
   <div class="container2">  
     <c:forEach items="${infolist}" var="bean">
    
     <div class="col-md-4 bride-grid">       
       <div class="content-grid l-grids bord">
         <figure class="effect-bubba">	   
       			    <IMG class=child0 src="uploadfile/${bean.path} "  / >					     
            <figcaption>
              <h4>${bean.title}</h4>
              <p> <a color="#fff" href="indexmethod!news.action?id=${bean.id }" >点击查看详情  </a></p>                               
            </figcaption>     
         </figure>           	
         <div class="clearfix"></div>        
       </div>
     </div> 
   
     </c:forEach>	   
   </div>
</div>
				
		
	


<!---->

		
		
		<DIV class="wrapper lazybox excel-recom">
			<H2>
				<a href="indexmethod!productlist.action?tuijian=1">精品推荐</a>
			</H2>					
			<UL style="DISPLAY: block" class="ul-excel ul-excel-1">
				<!--2-0-->				
				<c:forEach items="${tuijianlist}" var="tuijian">
				<LI class="li-excel">
					<H4 class="h4-pro-title">
						<A href="indexmethod!product.action?id=${tuijian.id }" target="_blank" >
						<SPAN class="a-title">产品名：${tuijian.pname }</SPAN>
						<SPAN class="s-abs" >${tuijian.fenlei.fenlei.fname }--${tuijian.fenlei.fname }</SPAN>
						<SPAN class="s-abs" style="margin-top:2px;color:#61D46B">${tuijian.gaishu }</SPAN>
						</A><EM class="em-price">价格：￥${tuijian.price2 }</EM>
					</H4>
					<A class="a-thumb" href="indexmethod!product.action?id=${tuijian.id }" target="_blank" >
					<IMG  src="<%=basePath %>/uploadfile/${tuijian.imgpath }" width="288" height="288" />
					</A>
					<a id="cuxiao" class="a-tag hidden"  target="_blank" href="indexmethod!product.action?id=${tuijian.id }" ref="ixv5-5-main-6-1" style="background:#d71249;">${tuijian.cuxiao }</a>
				</LI>
				</c:forEach>			
			</UL>		
		</DIV>
		
		
		<DIV class="wrapper lazybox index-new">
			<H2>
				<a href="indexmethod!productlist.action?type=2">新品首发</a>
			</H2>
			
			<c:forEach items="${newlist}" var="news">
			
			<DIV class=resize-item rewidth="190" width="237">
				<A href="indexmethod!product.action?id=${news.id }" rel=nofollow target=_blank >
				<IMG src="<%=basePath %>/uploadfile/${news.imgpath }" width="236" height="256" />
				</A>
			</DIV>
			</c:forEach>
			
			
		</DIV>
		
		
		<DIV class="wrapper lazybox index-diy">
			<H2>
				<a href="indexmethod!productlist.action?type=3">热销推荐</a>
			</H2>
			<c:forEach items="${hotlist}" var="hot">
			<DIV class=resize-item rewidth="190" width="237">
				<A href="indexmethod!product.action?id=${hot.id }" rel=nofollow target=_blank >
				<IMG src="<%=basePath %>/uploadfile/${hot.imgpath }" width="236" height="256" />
				</A>
			</DIV>
			</c:forEach>
			
			
		</DIV>
		
		<!---->
		
 <%@include file="footer.jsp" %>
		
 <%@include file="foot.jsp" %>
		
		
		<SCRIPT type=text/javascript src="_files/jquery-1.8.2.min.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/base.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/index.js"></SCRIPT>

		<SCRIPT type=text/javascript src="_files/head.min.js"></SCRIPT>
		<script type="text/javascript">
			 function hidden(){
			 if($("#cuxiao").html()==""&&$("#cuxiao").html()==null){$("#cuxiao").addClass("hidden");}
		      }
		      window.onload=function(){       
		         hidden();
		     }
		</script>
		

	
		
		
		
	</BODY>
</HTML>


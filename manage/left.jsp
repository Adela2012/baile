<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!--aside nav-->
<aside class="lt_aside_nav content mCustomScrollbar">
 <h2><a href="index.jsp">起始页</a></h2>
 <ul>
  <li>
   <dl>
    <dt>产品信息</dt>
    <!--当前链接则添加class:active-->
    <dd><a href="method!fenleilist.action" >分类管理</a></dd>
    <dd><a href="method!productlist.action" >产品管理</a></dd>
    <dd><a href="method!gyslist.action">供应商管理</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>订单信息</dt>
    <dd><a href="method!dingdanlist.action">订单列表</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>会员信息</dt>
    <dd><a href="method!userlist.action">会员管理</a></dd>
    <dd><a href="method!liuyanlist.action">留言管理</a></dd>
    <dd><a href="method!liuyanlist.action">评价管理</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>销售统计</dt>
    <dd><a href="method!xiaoshoulist.action">日销售统计</a></dd>
    <dd><a href="method!productlist2.action">产品销售统计</a></dd>
    <dd><a href="method!fenleilist3.action">分类销售统计</a></dd>
   </dl>
  </li>
  <li>
   <dl>
    <dt>网站设置</dt>
    <dd><a href="method!piclist.action">首图更换</a></dd>
    <dd><a href="method!newslist.action">文章管理</a></dd>
   </dl>
  </li> 
  <li>
   <p class="btm_infor">© 百乐园林 版权所有</p>
  </li>
 </ul>
</aside>

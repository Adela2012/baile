<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!--header-->
	<header>
	 <h1><img src="images/admin_logo.png"/></h1>
	 <ul class="rt_nav">
	  <li><a href="../" target="_blank" class="website_icon">站点首页</a></li>
	  <li><a href="#" class="admin_icon">${manage.username }</a></li>
	  <li><a href="method!changepwd.action" class="set_icon">修改密码</a></li>
	  <li><a href="method!loginout.action" class="quit_icon">安全退出</a></li>
	 </ul>
	</header>

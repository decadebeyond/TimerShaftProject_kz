<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index_nav.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<jsp:include page="/res.jsp"/>

  </head>
  
  <body class="navbar navbar-inverse navbar-fixed-top">
    <nav class="navbar jnavbar-inverse">
    	<div class="container-fluid">
    		<div class="navbar-header">
    			<a class="navbar-brand" href="#">个人中心</a>
    		</div>
    		
    		<ul class="nav navbar-nav">
    			<li><a href="/jsp/userpage/article">我的文章</a></li>
    			<li><a href="/jsp/userpage/photo">我的相册</a></li>
    			<li><a href="/jsp/userpage/comment">我的评论</a></li>
    			<li><a href="/jsp/userpage/personaldata">个人资料</a></li>
    		</ul>
    		
    		<ul class="nav navbar-nav navbar-right">
		 		<li><a href="/jsp/login">欢迎您${sessionScope.login.name}，退出登陆</a></li>
			</ul>
    	</div>
    </nav>
  </body>
</html>

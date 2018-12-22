<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserPage.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<jsp:include page="../res.jsp"/>

  </head>
  
  <body>
  	<div class="container">
  		<div class="container">
  			
  		</div>
  		<div class="col-md-2">
  			<table class="table table-bordered table-hover">
  			<tr><td><p class="text-center">个人主页</p></td></tr>
  			<tr><td><p class="text-center">文章列表</p></td></tr>
  			<tr><td><p class="text-center">相册列表</p></td></tr>
  			<tr><td><p class="text-center">个人资料</p></td></tr>
  			<tr><td><p class="text-center">个人主页</p></td></tr>
			</table>
  		</div>
  	</div>
  </body>
</html>

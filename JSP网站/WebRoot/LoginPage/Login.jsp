<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Login.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<jsp:include page="../res.jsp"/>

  </head>
  
  <body>
  	<div class="container">
  		<h1 class="page-header">用户登录</h1>
  		<form method="post" class="form-horizontal">
  			<div class="form-group">
  				<label class="control-label col-sm-4">用户名：</label>
  				<div class="col-sm-4">
  					<input type="" class="form-control" id="" placeholder="请输入用户名"/>
  					<div class="help-black">${ error.name }</div>
  				</div>
  			</div>
  		</form>
  	</div>
  </body>
</html>

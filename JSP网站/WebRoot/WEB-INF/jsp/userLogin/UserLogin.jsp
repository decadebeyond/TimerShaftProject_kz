<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>用户登录</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<jsp:include page="res.jsp"/>

  </head>
  
  <body>
    <div class="container">
    	<h1 class="page-header">用户登录</h1>
    	<form action="" method="post" class="form-horizontal">
    		<div class="form-group">
    			<label class="control-label col-sm-4">用户名：</label>
    			<div class="col-sm-6">
    				<input type="text" name="username" class="form-control" placeholder="请输入用户名"/>
    				<div class="help-black">${ error.username }</div>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="control-label col-sm-4">密码：</label>
    			<div class="col-sm-6">
    				<input type="password" name="password" class="form-control" placeholder="请输入密码"/>
    				<div class="help-black">${ error.passowrd }</div>
    			</div>
    		</div>
    		<%-- 
    		<div class="form-group">
    			<label class="control-label col-sm-4">验证码：</label>
    			<div class="col-sm-6">
    				<input type="text" name="vcode" class="form-control" placeholder="请输入验证码"/>
    				<div class="help-black">${ error.vcode }</div>
    			</div>
    		</div>
    		 --%>
    		<div class="form-group">
    			<div class="col-sm-offset-4 col-sm-4">
    				<button type="submit" class="btn btn-primary">登录</button>
    			</div>
    			<div>${ error.login }</div>
    			<div class="col-sm-4">
    				<li><a href="/jsp-website/user/register">注册</a></li>
    			</div>
    		</div>
    	</form>
    </div>
    <%-- 
<script type="text/javascript">
$(function(){
	$('.vcode').css('cursor', 'pointer').click(function(){
		$(this).attr('src', 'vcode.jpg?_=' + new Date().getTime());
	});
});
</script>
 --%>
  </body>
</html>

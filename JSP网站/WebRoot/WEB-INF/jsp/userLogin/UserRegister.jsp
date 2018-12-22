<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UserRegister.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<jsp:include page="res.jsp"/>
	<script type="text/javascript">
		$(function(){
			$('form').on('submit',function(){
				var pass1=$(this).find('input:password:eq(0)').val();
				var pass2=$(this).find('input:password1:eq(0)').val();
				if(pass1==pass2){
					return true;
				}
				alert('两次输出结果不一致！');
				return false;
			});
		});
	</script>
  </head>
  
  <body>
    <div class="container">
    	<h1 class="page-header">用户注册</h1>
    	<form action="" method="post" class="form-horizontal">
    		<div class="form-group">
    			<label class="control-label col-sm-4">用户名：</label>
    			<div class="col-sm-6">
    				<input type="text" name="username" class="form-control" placeholder="请输入用户名"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="control-label col-sm-4">密码：</label>
    			<div class="col-sm-6">
    				<input type="password" name="password" class="form-control"placeholder="请输入密码"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="control-label col-sm-4">重复密码：</label>
    			<div class="col-sm-6">
    				<input type="password" name="password1" class="form-control"placeholder="请重复输入密码"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="control-label col-sm-4">性别</label>
    			<div class="col-sm-2">
    				<select name="sex" class="form-control">
    					<option>男</option>
    					<option>女</option>
    				</select>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="control-label col-sm-4">手机号码：</label>
    			<div class="col-sm-6">
    				<input type="text" name="phone_number" class="form-control"placeholder="请输入手机号码"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<label class="control-label col-sm-4">邮箱：</label>
    			<div class="col-sm-6">
    				<input type="text" name="email" class="form-control"placeholder="请输入邮箱"/>
    			</div>
    		</div>
    		<div class="form-group">
    			<div class="col-sm-offset-4 col-sm-4">
    				<button type="submit" class="btn btn-success">提交</button>
    			</div>
    		</div>
    	</form>
    </div>
  </body>
</html>

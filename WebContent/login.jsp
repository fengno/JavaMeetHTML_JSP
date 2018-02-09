<%@page import="java.io.File"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My JSP 'index.jsp' starting page</title>
</head>
<body>
	<h1>用户登录</h1>
	<hr>
	<form action="dologin.jsp?mypass=666888" name="loginForm" method="post">
		<p>
			<label>用户名：</label>
			<input type="text" name="username" value="" />
			<label>密码：</label>
			<input type="password" name="password" value="" />
		</p>
		<p>
			<input type="submit" value="登录"/></td>
		</p>
	</form>
</body>
</html>
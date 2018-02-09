<%@page import="com.po.Users"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>测试JavaBean四个作用域范围</title>

</head>
<body>
	<h1>Javabean的四个作用域范围</h1>
	<hr>
	<jsp:useBean id="myUsers" class="com.po.Users" scope="session"/>
	用户名：<jsp:getProperty property="username" name="myUsers"/><br>
	密码：<jsp:getProperty property="password" name="myUsers"/><br>
	<!-- 使用内置对象获取用户名和密码 -->
	<hr>
	用户名：<%=((Users)session.getAttribute("myUsers")).getUsername() %><br>
	密码：<%=((Users)session.getAttribute("myUsers")).getPassword() %><br>
</body>
</html>
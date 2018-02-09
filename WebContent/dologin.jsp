<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	// 防止中文乱码
	request.setCharacterEncoding("utf-8");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My JSP 'index.jsp' starting page</title>
</head>
<body>
	<jsp:useBean id="myUsers" class="com.po.Users" scope="page"/>
	<h1>setProperty动作元素</h1>
	<hr>
	<!-- 根据表单自动匹配所有的属性(表单属性名称与bean的属性名称全匹配) -->
	<jsp:setProperty property="*" name="myUsers"/>
	用户名：<%= myUsers.getUsername() %><br>
	密码：<%= myUsers.getPassword() %><br>
</body>
</html>
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
	<!-- 根据表单自动匹配所有的属性(表单属性名称与bean的属性名称全匹配)
	<jsp:setProperty property="*" name="myUsers"/>
	 -->
	<!-- 根据表单自动匹配部分的属性(表单属性名称与bean的属性名称部分匹配)，密码字段没有匹配，会显示null
	<jsp:setProperty property="username" name="myUsers"/>
	 -->
	<!-- 跟表单无关（即使表单赋值了，也会在这里被替换掉），通过手工赋值给属性	 
	<jsp:setProperty property="username" name="myUsers" value="张三"/>
	<jsp:setProperty property="password" name="myUsers" value="123"/>
	-->
	<!-- 通过URl传参数给属性赋值：密码来自url传参，名称来自表单 -->
	<jsp:setProperty property="password" name="myUsers" param="mypass"/>
	<jsp:setProperty property="username" name="myUsers" />
	用户名：<%= myUsers.getUsername() %><br>
	密码：<%= myUsers.getPassword() %><br>
</body>
</html>
<%@page import="java.text.SimpleDateFormat"%>
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
	<h1>session内置对象</h1>
	<hr>
	<%
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
		session.setAttribute("username", "admin");
		session.setAttribute("password", "123456");
		session.setAttribute("age", "18");
		
		// 设置当前session最大生存期限（单位是秒）
		//session.setMaxInactiveInterval(10);//10秒钟
		
	%>
	Session创建时间：<%= sdf.format(new Date(session.getCreationTime())) %><br>
	Session的ID编号：<%= session.getId() %><br>
	从Session中获取用户名：<%= session.getAttribute("username") %><br>
	<a href="session_page2.jsp" target="_blank">跳转到session_page2.jsp</a>
</body>
</html>
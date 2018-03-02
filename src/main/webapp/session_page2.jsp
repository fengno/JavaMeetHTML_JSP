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
	%>
	<%-- 从session_page1.jsp跳转过来，创建时间、ID都应该不变，还能获取到用户名 --%>
	Session创建时间：<%= sdf.format(new Date(session.getCreationTime())) %><br>
	Session的ID编号：<%= session.getId() %><br>
	从Session中获取用户名：<%= session.getAttribute("username") %><br>
	Session中保存的属性有：
	<% 
		String[] names = session.getValueNames();
		for (String name : names) {
			out.println(name + ":&nbsp;&nbsp" + session.getValue(name) + "<br>");
		}
	%>
</body>
</html>
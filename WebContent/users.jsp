<%@page import="java.net.URLDecoder"%>
<%@page import="com.po.Users"%>
<%@page import="java.io.File"%>
<%@ page language="java" import="java.util.*,java.net.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 
	pageEncoding是jsp文件本身的编码
	contentType的charset是指服务器发给客户端时内容的编码
--%>
<%
	// 第三种注释：JSP脚本注释
	String path = request.getContextPath();
	// 单行注释
	/*
	   多行注释
	*/
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My JSP 'index.jsp' starting page</title>
</head>
<body>
	<h1>用户信息</h1>
	<hr>
	<%
		// 防止中文乱码
		request.setCharacterEncoding("utf-8");
		String username = "";
		String password = "";
		Cookie[] cookies = request.getCookies();
		if (cookies != null && cookies.length > 0) {
			for (Cookie c : cookies) {
				if (c.getName().equals("username")) {
					username = URLDecoder.decode(c.getValue(), "utf-8");
				}
				if (c.getName().equals("password")) {
					password = URLDecoder.decode(c.getValue(), "utf-8");
				}
			}
		}
	%>
	<br>
	<br>
	<br>
	用户名:<%= username %><br>
	密码：<%= password %><br>
</body>
</html>
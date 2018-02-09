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
	<h1>page内置对象</h1>
	<hr>
	当前page页面对象的字符串描述：<%= page.toString() %><br><!-- org.apache.jsp.page_jsp@58a3fc2c @后面的字符串是page对象的哈希值（十六进制） -->
	当前page页面对象的哈希值（十进制）：<%= page.hashCode() %><br>
	当前page页面对象的哈希值（十六进制）：<%= Integer.toHexString(page.hashCode()) %><br>
</body>
</html>
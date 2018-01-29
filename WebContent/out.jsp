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
	<h1>out内置对象</h1>
	<%
		out.println("<h2>静夜思</h2><br>");
		out.println("床前明月光<br>");
		out.println("疑是地上霜<br>");
		out.flush();
		out.clear();//flush后调用clear会抛出异常
		out.println("举头望明月<br>");
		out.println("低头思故乡<br>");
	%>
</body>
</html>
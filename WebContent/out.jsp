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
		out.println("<h2>打印HTML标签</h2><br>");
	%>
	缓冲区大小：<%= out.getBufferSize() %>&nbsp;byte<br>
	缓冲区剩余大小：<%= out.getRemaining() %>&nbsp;byte<br>
	是否自动清空缓冲区：<%= out.isAutoFlush() %>
</body>
</html>
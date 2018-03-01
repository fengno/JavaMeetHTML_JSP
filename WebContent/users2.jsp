<%@ page language="java" import="java.util.*,java.net.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My JSP 'index.jsp' starting page</title>
</head>
<body>
	<h1>用户资料</h1>
	<hr>
	<%
		// 防止中文乱码
		request.setCharacterEncoding("utf-8");
		String username = "";
		String password = "";
		if (request.getParameter("username") != null) {
			username = request.getParameter("username");
		}
		if (request.getParameter("password") != null) {
			password = request.getParameter("password");
		}
	%>
	<br>
	用户名:<%= username %><br>
	密码：<%= password %><br>
</body>
</html>
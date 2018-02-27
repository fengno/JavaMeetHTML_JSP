<%@page import="java.io.File"%>
<%@ page language="java" import="java.util.*,java.net.*" contentType="text/html; charset=UTF-8"
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
	<h1>用户登录</h1>
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
	<form action="dologin.jsp" name="loginForm" method="post">
		<p>
			<label>用户名：</label>
			<input type="text" name="username" value="<%=username %>" />
			<label>密码：</label>
			<input type="password" name="password" value="<%=password %>" />
			<br>
			<input type="checkbox" checked="checked" name="isUseCookie">十天内记住我的登录状态</input>
		</p>
		<p>
			<input type="submit" value="登录"/></td>
		</p>
	</form>
</body>
</html>
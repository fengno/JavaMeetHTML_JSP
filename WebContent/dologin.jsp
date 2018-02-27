<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
	<h1>登录成功</h1>
	<br>
	<br>
	<br>
	<br>
	<%
		// 首先判断用户是否选择了记住登录状态
		String[] isUseCookies = request.getParameterValues("isUseCookie");
		if (isUseCookies != null && isUseCookies.length > 0) {
			// 把用户名和密码保存在Cookie对象里
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			Cookie usernameCookie = new Cookie("username", username);
			Cookie passwordCookie = new Cookie("password", password);
			// 设置最大生存期限为10天
			usernameCookie.setMaxAge(10 * 24 * 3600);
			passwordCookie.setMaxAge(10 * 24 * 3600);
			response.addCookie(usernameCookie);
			response.addCookie(passwordCookie);
		} else {
			// 如果已经保存过，使失效
			Cookie[] cookies = request.getCookies();
			if (cookies != null && cookies.length > 0) {
				for (Cookie c : cookies) {
					if (c.getName().equals("username") || c.getName().equals("password")) {
						c.setMaxAge(0);//设置Cookie失效
						response.addCookie(c);//重新保存才能生效
					}
				}
			}
		}
	%>
	<a href="users.jsp" target="_blank">查看用户信息</a>
</body>
</html>
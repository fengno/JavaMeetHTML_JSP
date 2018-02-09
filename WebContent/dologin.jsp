<%@page import="java.io.File"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	String username = "";
	String password = "";
	// 防止中文乱码
	request.setCharacterEncoding("utf-8");
	
	username = request.getParameter("username");
	password = request.getParameter("password");
	
	// 如果用户名、密码匹配，则登录成功
	if ("admin".equals(username) && "admin".equals(password)) {
		session.setAttribute("loginUser", username);
		// 登录成功使用服务器内部转发到成功页面
		request.getRequestDispatcher("login_success.jsp").forward(request, response);
	} else {
		// 登录失败则请求重定向到失败页面
		response.sendRedirect("login_failure.jsp");
	}
%>

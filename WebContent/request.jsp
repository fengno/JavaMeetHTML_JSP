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
	<h1>request内置对象</h1>
	<hr>
	<%-- tomcat提交表单时默认的字符集是ISOxxx，
		在接收参数之前将字符集与传参页面contentType中的charset保持一致，可解决中文乱码问题 --%>
	<% 
		request.setCharacterEncoding("UTF-8");// 解决中文乱码问题
	%>
	用户名：<%= request.getParameter("username") %><br>
	爱好：
	<%
		String[] favorites = request.getParameterValues("favorite");
		if (null != favorites) {
			for(String favorite : favorites) {
				out.println(favorite + "&nbsp;&nbsp;");
			}
		}
	%>
</body>
</html>
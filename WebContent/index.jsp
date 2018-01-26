<%@page import="java.io.File"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	<h1>hello, world</h1>
	<h2>爱慕课</h2>
	<!-- 第一种注释：HTML的注释，客户端可见 -->
	<%-- 第二种注释：JSP的注释，客户端不可见 --%>
	
	<%-- JSP脚本 --%>
	<%out.println("basePath=" + basePath);%>
	<!-- 换行 -->
	<br/>
	<%-- JSP声明 --%>
	<%!
		String name = "张三"; // 声明一个字符串变量
		int add(int x, int y) {	// 声明了一个返回整型的函数，实现两个整数的求和。
			return x + y;
		}
	%>
	<% out.println("name=" + name); %>
</body>
</html>
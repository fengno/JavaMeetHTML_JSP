<%@page import="java.io.PrintWriter"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 设置响应的MIME类型
	response.setContentType("text/html;charset=utf-8");

	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	
	// 请求重定向
	// response.sendRedirect("request.jsp");
	// 请求转发
	request.getRequestDispatcher("request.jsp").forward(request, response);
%>

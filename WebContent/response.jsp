<%@page import="java.io.PrintWriter"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 设置响应的MIME类型
	response.setContentType("text/html;charset=utf-8");

	out.println("<h1>response内置对象</h1>");
	out.println("<hr>");
	
	PrintWriter outer = response.getWriter();// 获得输出流对象
	outer.println("这是response对象生成的输出流outer对象");
	
	// 注意：PrintWriter对象的输出信息会早于内置对象out的输出信息
%>

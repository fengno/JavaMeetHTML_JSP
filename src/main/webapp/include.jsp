<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- 该页面中去掉所有html标签 --%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
	Date date = Calendar.getInstance().getTime();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy年MM月dd日");
	String s = sdf.format(date);
	out.println(s + "<br>");
%>

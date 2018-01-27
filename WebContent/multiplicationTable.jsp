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
	<%!
		// 返回九九乘法表对应的HTML代码，通过表达式来调用，在页面上显示
		String printMultiTable1() 
		{
			StringBuilder sb = new StringBuilder();
			for (int i=1; i<=9; i++)
			{
				for (int j=1; j<=9; j++)
				{
					sb.append(i).append("*").append(j).append("=").append(i*j);
					sb.append("&nbsp;&nbsp;&nbsp;&nbsp;");
				}
				// 追加换行标签
				sb.append("<br>");
			}
			return sb.toString();
		}
	
		// 返回九九乘法表对应的HTML代码，通过脚本来调用，在页面上显示
		void printMultiTable2(JspWriter out) throws Exception
		{
			for (int i=1; i<=9; i++)
			{
				for (int j=1; j<=9; j++)
				{
					// JSP内置out对象
					out.println(i + "*" + j + "=" + (i*j) + "&nbsp;&nbsp;&nbsp;&nbsp;");
				}
				// 追加换行标签
				out.println("<br>");
			}
		}
	%>
	<h1>九九乘法表（声明+表达式实现）</h1>
	<hr>
	<%= printMultiTable1() %>
	<br>
	<h1>九九乘法表（声明+脚本实现）</h1>
	<hr>
	<% printMultiTable2(out); %>
</body>
</html>
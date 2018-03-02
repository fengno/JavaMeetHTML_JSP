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
	<h1>application内置对象</h1>
	<hr>
	<%
		application.setAttribute("city", "hangzhou");
		application.setAttribute("postcode", "123456");
		application.setAttribute("email", "18@163.com");
		
	%>
	所在城市是：<%= application.getAttribute("city") %><br>
	Session的ID编号：<%= session.getId() %><br>
	applicaiton中的属性有：
	<%
		Enumeration<String> attrs = application.getAttributeNames();
		while (attrs.hasMoreElements()) {
			String name = attrs.nextElement();
			out.println("--" + name + ":&nbsp;&nbsp;" + application.getAttribute(name) + "<br>");
		}
	%>
	JSP(SERVLET)引擎名及版本号：<%= application.getServerInfo() %>
</body>
</html>
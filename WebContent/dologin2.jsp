<%@ page language="java" import="java.util.*,java.net.*" contentType="text/html; charset=UTF-8"
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
		<%-- param动作可以添加新的参数，也可以修改原来的参数 --%>
	<jsp:forward page="users2.jsp">
		<jsp:param value="admin@123.com" name="email"/>
		<jsp:param value="修改原来的参数" name="username"/>
	</jsp:forward>
</body>
</html>
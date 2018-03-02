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
	<h1>用户注册</h1>
	<hr>
	<form action="response.jsp" name="reqForm" method="post">
		<table>
			<tr>
				<td>用户名：</td>
				<td><input type="text" name="username"/></td>
				<%
					request.setAttribute("password", "123456");
				%>
			</tr>
			<tr>
				<td>爱好：</td>
				<td>
					<input type="checkbox" name="favorite" value="read">读书
					<input type="checkbox" name="favorite" value="music">音乐
					<input type="checkbox" name="favorite" value="movie">电影
					<input type="checkbox" name="favorite" value="internet">上网
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="提交"/></td>
			</tr>
		</table>
	</form>
	<br>
	<br>
	<hr>
	<a href="request.jsp?username=李四">测试URL传中文参数</a>
</body>
</html>
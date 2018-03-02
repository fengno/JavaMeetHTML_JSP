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
		request.setAttribute("password", "abcd");
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
	<br>
	<%-- 这里获取的是本页面设置的password属性，而非reg.jsp页面设置的password属性 --%>
	密码：<%= request.getAttribute("password") %><br>
	请求体的MIME类型：<%= request.getContentType() %><br>
	协议类型及版本号：<%= request.getProtocol() %><br>
	服务器主机名：<%= request.getServerName() %><br>
	服务器端口号：<%= request.getServerPort() %><br>
	请求文件的长度：<%= request.getContentLength() %><br>
	请求客户端的RemoteAddress：<%= request.getRemoteAddr() %><br>
	请求客户端的RemoteHost：<%= request.getRemoteHost() %><br>
	请求客户端的RemotePort：<%= request.getRemotePort() %><br>
	请求客户端的RemoteUser：<%= request.getRemoteUser() %><br>
	请求的真实路径：<%= request.getRealPath("request.jsp") %><br>
	请求的上下文路径：<%= request.getContextPath() %><br>
</body>
</html>
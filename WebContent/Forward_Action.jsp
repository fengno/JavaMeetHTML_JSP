<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Include动作</h1>
	<hr>
	<!-- <jsp:forward page="users2.jsp"/> 等价于-->
	<%
		request.getRequestDispatcher("user2.jsp").forward(request, response);
	%>
</body>
</html>
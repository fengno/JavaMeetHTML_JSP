<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<a href="servlet/HelloServlet">GET方式请求HelloServlet</a>
	<form action="servlet/HelloServlet" method="post">
		<input type="submit" value="POST方式请求HelloServlet"/>
	</form>
</body>
</html>
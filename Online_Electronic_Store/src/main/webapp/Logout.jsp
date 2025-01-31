<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style1.css">
</head>
<body><center><h1>
<%
	session.invalidate();
	out.println("<br><br>Logged Out Successfully");
%>
<br><br>
<a href="index.html">Login Page</a>
</body>
</html>
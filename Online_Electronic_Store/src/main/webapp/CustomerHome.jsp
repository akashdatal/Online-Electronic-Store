<%@page import="com.pack1.CustomerBean"%>
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
		CustomerBean cbean =(CustomerBean)session.getAttribute("cbean");
		out.println("<br><br>Welcome Mr. "+cbean.getcFname()+"<br><br>");
	%>
	<a href="vpc1">View Product</a><br><br>
	<a href="logout">Logout</a><br><br>
</body>
</html>
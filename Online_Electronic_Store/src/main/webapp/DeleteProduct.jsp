<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style1.css">
</head>
<body>
<center><h1>
	<%
	AdminBean abean=(AdminBean)session.getAttribute("abean");
	String msg=(String)request.getAttribute("msg");
	out.println("Hello Mr. "+abean.getaFname()+"<br><br>");
	out.println(msg+"<br><br>");
	%>
	<a href="Addproduct.html">Add Product</a><br><br>
	<a href="view1">View Product</a><br><br>
	<a href="logout">Logout</a><br><br>
</body>
</html>
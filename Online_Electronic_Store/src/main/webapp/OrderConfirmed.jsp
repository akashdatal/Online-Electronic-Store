<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.UpdateProductCustomerServlet"%>
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
		ProductBean pbean =(ProductBean)session.getAttribute("pbean");
		String msg2=(String)request.getAttribute("msg2");
		out.println("<br>Hello Mr. "+cbean.getcFname()+"<br><br>");
		out.println("Your Order is placed sucessfully!!!"+"<br><br>");
		out.println(msg2+"<br><br>");
	//	out.println("You have charged *"+pbean.getpPrice()+"/rs ");
%>
	<a href="vpc1">View Product</a><br><br>
	<a href="logout">Logout</a><br><br>
</body>
</html>
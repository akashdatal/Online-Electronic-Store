<%@page import="com.pack1.CustomerBean"%>
<%@page import="com.pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style2.css">
</head>
<body><center><h1>
<%
		CustomerBean cb =(CustomerBean)session.getAttribute("cbean");
		ProductBean pb=(ProductBean)request.getAttribute("pbean");
		out.println("<br><u>Buy Products</u><br><br>");
%>
<form action="buyproduct" method="post">
	Product Code <input type="text" name="pCode" value="<%=pb.getpCode() %>"><br><br>
	Product Name <input type="text" name="pName" value="<%=pb.getpName() %>"><br><br>
	Product Company <input type="text" name="pCompany" value="<%=pb.getpCompany() %>"><br><br>
	Product Price <input type="text" name=pPrice value="<%=pb.getpPrice() %>"><br><br>
	Product Quantity <input type="text" name=pQty value="<%=pb.getpQuantity() %>"><br><br>
	Required Quantity <input type="text" name="ReqQty"><br><br>
	
	<input type="submit" value="BUY" id="inp"><br><br>
	<a href="logout">Logout</a><br><br>
</form>
</body>
</html>
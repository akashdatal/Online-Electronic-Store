<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style2.css">
</head>
<body><center>
<h1>
<%
		AdminBean abean=(AdminBean)session.getAttribute("abean");
		ProductBean pb=(ProductBean)request.getAttribute("pbean");
		out.println("<br>Hello Mr. "+abean.getaFname()+"<br> "+" "+pb.getpName()+"  product details available for edit<br><br><br>");
%>
<form action="update" method="post">
	Product Price<input type="text" name=pPrice value="<%=pb.getpPrice() %>"><br><br>
	Product Quantity<input type="text" name=pQty value="<%=pb.getpQuantity() %>"><br><br>
	<input type="hidden" name="pCode" value="<%=pb.getpCode() %>">
	<input type="submit" value="Update" id="inp">
</form>

</body>
</html>
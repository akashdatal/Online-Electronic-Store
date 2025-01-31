<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.CustomerBean"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>

table.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
<link rel="stylesheet" href="style1.css">
<title>Insert title here</title>
</head>
<body><center><h1>
<%
	ProductBean pbean =(ProductBean)session.getAttribute("pbean");
	CustomerBean cbean =(CustomerBean)session.getAttribute("cbean");
	
	ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("ProductsList");
	out.println("<br><br><u><i>Hello Mr. "+cbean.getcFname()+" These Are Your Product Details</u></i>");
	if(al.size()==0){
		out.println("Products are NOT available!!!");
	}
	else{
		Iterator<ProductBean> i=al.iterator();
		out.println("<table class='center' style='width:70%' align-item='center'>");
		while(i.hasNext()){
			ProductBean pb=i.next();
			out.println("<tr><td> "+pb.getpCode()+" </td><td> "+pb.getpName()+" </td><td> "+pb.getpCompany()+" </td><td> "+pb.getpPrice()+" </td><td> "+pb.getpQuantity()
			+" </td><td><a href='buy?pcode="+pb.getpCode()+"'>  Buy <a></td></tr><br> ");
			
		}
		out.println("</table>");
	}
%>
<br>
<a href="logout">Logout</a>

</body>
</html>
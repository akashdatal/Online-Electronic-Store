<%@page import="java.util.Iterator"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="style1.css">
<style>
table.center {
  margin-left: auto;
  margin-right: auto;
}
</style>
<title>Insert title here</title>
</head>
<body><center><h1>
<%
	AdminBean abean =(AdminBean)session.getAttribute("abean");
	ArrayList<ProductBean> al = (ArrayList<ProductBean>)session.getAttribute("ProductsList");
	out.println("<br><br><u><i>Hello "+abean.getaFname()+" These Are Your Product Details</u></i><br> ");
	if(al.size()==0){
		out.println("Products are NOT available!!!</u></i><br><br>");
	}
	else{
		Iterator<ProductBean> i=al.iterator();
		out.println("<table class='center' style='width:70%' align-item='center'>");
		while(i.hasNext()){
			ProductBean pb=i.next();
			out.println("<tr><td> "+pb.getpCode()+" </td><td> "+pb.getpName()+" </td><td> "+pb.getpCompany()+" </td><td> "+pb.getpPrice()+" </td><td> "+pb.getpQuantity()+
			" </td><td> <a href='edit?pcode="+pb.getpCode()+"'> Edit<a>"+"</td><td>  "+
			"<a href='delete?pcode="+pb.getpCode()+"'>Delete<a></td></tr>");
			
		}
		out.println("</table>");
	}
%>
<br><br>
<a href="logout">Logout</a>
</body>
</html>
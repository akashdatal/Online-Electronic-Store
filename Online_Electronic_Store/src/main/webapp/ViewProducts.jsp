<%@page import="java.util.Iterator"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin Product View</title>
  <link rel="stylesheet" href="style1.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body class="bg-light">

  <div class="container py-5">
    <%
      AdminBean abean = (AdminBean) session.getAttribute("abean");
      ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("ProductsList");
    %>

    <div class="text-center mb-4">
      <h2 class="text-primary">
        <u><i>Hello <%= abean.getaFname() %>, These Are Your Product Details</i></u>
      </h2>
    </div>

    <% if (al == null || al.size() == 0) { %>
      <div class="alert alert-warning text-center">Products are NOT available!!!</div>
    <% } else { %>
      <div class="table-responsive">
        <table class="table table-bordered table-hover table-striped text-center align-middle">
          <thead class="table-dark">
            <tr>
              <th>Product Code</th>
              <th>Name</th>
              <th>Company</th>
              <th>Price</th>
              <th>Quantity</th>
              <th>Edit</th>
              <th>Delete</th>
            </tr>
          </thead>
          <tbody>
            <%
              Iterator<ProductBean> i = al.iterator();
              while (i.hasNext()) {
                ProductBean pb = i.next();
            %>
              <tr>
                <td><%= pb.getpCode() %></td>
                <td><%= pb.getpName() %></td>
                <td><%= pb.getpCompany() %></td>
                <td><%= pb.getpPrice() %></td>
                <td><%= pb.getpQuantity() %></td>
                <td><a href="edit?pcode=<%= pb.getpCode() %>" class="btn btn-warning btn-sm">Edit</a></td>
                <td><a href="delete?pcode=<%= pb.getpCode() %>" class="btn btn-danger btn-sm">Delete</a></td>
              </tr>
            <% } %>
          </tbody>
        </table>
      </div>
    <% } %>

    <div class="text-center mt-4">
      <a href="logout" class="btn btn-outline-danger">Logout</a>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

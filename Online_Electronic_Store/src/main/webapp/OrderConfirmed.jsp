<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Order Confirmation</title>
  <link rel="stylesheet" href="style1.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body class="bg-light">

  <div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow-lg p-4 text-center" style="width: 100%; max-width: 500px;">
      <%
        CustomerBean cbean = (CustomerBean) session.getAttribute("cbean");
        ProductBean pbean = (ProductBean) session.getAttribute("pbean");
        String msg2 = (String) request.getAttribute("msg2");
      %>

      <h3 class="text-success mb-3">Hello Mr. <%= cbean.getcFname() %></h3>
      <h5 class="mb-3">🎉 Your order has been placed successfully!</h5>

      <% if (msg2 != null && !msg2.isEmpty()) { %>
        <div class="alert alert-info"><%= msg2 %></div>
      <% } %>

      <!-- Optional: Show price info -->
      <%-- 
      <p class="text-muted">You have been charged <strong><%= pbean.getpPrice() %> Rs</strong>.</p> 
      --%>

      <div class="d-grid gap-2 mt-4">
        <a href="vpc1" class="btn btn-primary">View More Products</a>
        <a href="logout" class="btn btn-outline-danger">Logout</a>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

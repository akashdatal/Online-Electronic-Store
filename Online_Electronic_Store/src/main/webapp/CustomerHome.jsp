<%@page import="com.pack1.CustomerBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Customer Dashboard</title>
  <link rel="stylesheet" href="style1.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body class="bg-light">

  <div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow-lg p-4 text-center" style="width: 100%; max-width: 450px;">
      <%
        CustomerBean cbean = (CustomerBean) session.getAttribute("cbean");
      %>
      <h3 class="text-primary mb-3">Welcome Mr. <%= cbean.getcFname() %></h3>
      <p class="mb-4">Click On View Products</p>

      <div class="d-grid gap-2">
        <a href="vpc1" class="btn btn-primary">View Products</a>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

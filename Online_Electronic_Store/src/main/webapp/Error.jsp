<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Message</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body class="bg-light">

  <div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow-lg p-4 text-center" style="width: 100%; max-width: 500px;">
      <%
        String data = (String) request.getAttribute("msg");
      %>

      <h4 class="text-info mb-4">System Message</h4>

      <% if (data != null && !data.trim().isEmpty()) { %>
        <div class="alert alert-warning"><%= data %></div>
      <% } else { %>
        <div class="alert alert-secondary">No message available.</div>
      <% } %>

      <div class="d-grid gap-2 mt-4">
        <a href="Addproduct.html" class="btn btn-primary">Add Product</a>
        <a href="view1" class="btn btn-secondary">View Products</a>
        <a href="logout" class="btn btn-outline-danger">Logout</a>
      </div>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

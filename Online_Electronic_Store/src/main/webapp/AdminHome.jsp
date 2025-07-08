<%@ page import="com.pack1.AdminBean" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Admin Dashboard</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
  <link rel="stylesheet" href="style1.css">
</head>
<body class="bg-light">

  <div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow-lg p-4 text-center" style="max-width: 400px; width: 100%;">
      
      <h2 class="mb-4 text-primary">
        <%
          AdminBean abean = (AdminBean) session.getAttribute("abean");
          if (abean != null) {
            out.print("Welcome Mr. " + abean.getaFname());
          } else {
            response.sendRedirect("AdminLogin.html"); // redirect if not logged in
          }
        %>
      </h2>
      
      <div class="d-grid gap-3">
        <a href="Addproduct.html" class="btn btn-outline-primary">Add Product</a>
        <a href="view1" class="btn btn-outline-success">View Product</a>
        <a href="logout" class="btn btn-outline-danger">Logout</a>
      </div>
      
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

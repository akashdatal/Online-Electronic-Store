<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Edit Product</title>
  <link rel="stylesheet" href="style2.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body class="bg-light">

  <div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow-lg p-4" style="width: 100%; max-width: 500px;">
      <%
        AdminBean abean = (AdminBean) session.getAttribute("abean");
        ProductBean pb = (ProductBean) request.getAttribute("pbean");
      %>

      <h4 class="text-center mb-4 text-primary">
        Hello Mr. <%= abean.getaFname() %>, <br>
        <%= pb.getpName() %> product details available for edit
      </h4>

      <form action="update" method="post">
        <div class="mb-3">
          <label for="pPrice" class="form-label">Product Price</label>
          <input type="text" class="form-control" name="pPrice" value="<%= pb.getpPrice() %>" required>
        </div>

        <div class="mb-3">
          <label for="pQty" class="form-label">Product Quantity</label>
          <input type="text" class="form-control" name="pQty" value="<%= pb.getpQuantity() %>" required>
        </div>

        <input type="hidden" name="pCode" value="<%= pb.getpCode() %>">

        <div class="d-grid">
          <button type="submit" class="btn btn-success">Update</button>
        </div>
      </form>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>

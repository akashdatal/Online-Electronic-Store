<%-- <%@page import="com.pack1.CustomerBean"%>
<%@page import="com.pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Buy Product</title>
  <link rel="stylesheet" href="style2.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body class="bg-light">

  <div class="container d-flex justify-content-center align-items-center min-vh-100">
    <div class="card shadow-lg p-4" style="width: 100%; max-width: 500px;">
      <%
        CustomerBean cb = (CustomerBean) session.getAttribute("cbean");
        ProductBean pb = (ProductBean) request.getAttribute("pbean");
      %>
      <h3 class="text-center mb-4 text-primary"><u>Buy Products</u></h3>

      <form action="buyproduct" method="post">
        <div class="mb-3">
          <label class="form-label">Product Code</label>
          <input type="text" class="form-control" name="pCode" value="<%=pb.getpCode()%>" readonly>
        </div>

        <div class="mb-3">
          <label class="form-label">Product Name</label>
          <input type="text" class="form-control" name="pName" value="<%=pb.getpName()%>" readonly>
        </div>

        <div class="mb-3">
          <label class="form-label">Product Company</label>
          <input type="text" class="form-control" name="pCompany" value="<%=pb.getpCompany()%>" readonly>
        </div>

        <div class="mb-3">
          <label class="form-label">Product Price</label>
          <input type="text" class="form-control" name="pPrice" value="<%=pb.getpPrice()%>" readonly>
        </div>

        <div class="mb-3">
          <label class="form-label">Available Quantity</label>
          <input type="text" class="form-control" name="pQty" value="<%=pb.getpQuantity()%>" readonly>
        </div>

        <div class="mb-3">
          <label class="form-label">Required Quantity</label>
          <input type="text" class="form-control" name="ReqQty" required>
        </div>

        <div class="d-grid mb-3">
          <button type="submit" class="btn btn-success">BUY</button>
        </div>

        <div class="text-center">
          <a href="logout" class="btn btn-outline-danger">Logout</a>
        </div>
      </form>
    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
 --%>
 <%@page import="com.pack1.CustomerBean"%>
<%@page import="com.pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Buy Product</title>
  <link rel="stylesheet" href="style2.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body class="bg-light">

<%
  CustomerBean cb = (CustomerBean) session.getAttribute("cbean");
  ProductBean pb = (ProductBean) request.getAttribute("pbean");
%>

<div class="container py-5">
  <div class="row justify-content-center">
    <div class="col-md-8">
      <div class="card shadow-lg">
        <div class="card-header bg-primary text-white text-center">
          <h4>Buy Product</h4>
        </div>
        <div class="card-body">
          <div class="row g-3 mb-4">
            <div class="col-md-6">
              <strong>Product Code:</strong> <%= pb.getpCode() %>
            </div>
            <div class="col-md-6">
              <strong>Product Name:</strong> <%= pb.getpName() %>
            </div>
            <div class="col-md-6">
              <strong>Company:</strong> <%= pb.getpCompany() %>
            </div>
            <div class="col-md-6">
              <strong>Price:</strong> ₹<%= pb.getpPrice() %>
            </div>
            <div class="col-md-6">
              <strong>Available Quantity:</strong> <%= pb.getpQuantity() %>
            </div>
          </div>

          <form action="buyproduct" method="post">
            <input type="hidden" name="pCode" value="<%= pb.getpCode() %>">
            <input type="hidden" name="pName" value="<%= pb.getpName() %>">
            <input type="hidden" name="pCompany" value="<%= pb.getpCompany() %>">
            <input type="hidden" name="pPrice" value="<%= pb.getpPrice() %>">
            <input type="hidden" name="pQty" value="<%= pb.getpQuantity() %>">

            <div class="mb-3">
              <label for="ReqQty" class="form-label">Enter Required Quantity</label>
              <input type="number" class="form-control" name="ReqQty" id="ReqQty" min="1" max="<%= pb.getpQuantity() %>" required>
            </div>

            <div class="d-grid gap-2">
              <button type="submit" class="btn btn-success">Buy Now</button>
              <a href="logout" class="btn btn-outline-danger">Logout</a>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
 
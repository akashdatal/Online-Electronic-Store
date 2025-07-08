<%-- <%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.pack1.CustomerBean"%>
<%@page import="com.pack1.ProductBean"%>
<%@page import="com.pack1.AdminBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Product Details</title>
  <link rel="stylesheet" href="style1.css">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
</head>
<body class="bg-light">

  <div class="container py-5">
    <%
      ProductBean pbean = (ProductBean) session.getAttribute("pbean");
      CustomerBean cbean = (CustomerBean) session.getAttribute("cbean");
      ArrayList<ProductBean> al = (ArrayList<ProductBean>) session.getAttribute("ProductsList");
    %>

    <div class="text-center mb-4">
      <h2 class="text-primary">
        <u><i>Hello Mr. <%=cbean.getcFname()%>, These Are Your Product Details</i></u>
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
              <th>Buy</th>
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
                <td><a href='buy?pcode=<%=pb.getpCode()%>' class="btn btn-success btn-sm">Buy</a></td>
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
 --%>
 <%@page import="java.util.ArrayList"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.pack1.CustomerBean"%>
<%@page import="com.pack1.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Product Cards</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
	<style>
    body {
      background-image: url('https://png.pngtree.com/thumb_back/fh260/background/20230521/pngtree-commercial-electronics-store-of-many-screens-image_2667345.jpg'); /* Replace with actual image path */
      background-size: cover;
      background-position: center;
      background-repeat: no-repeat;
      height: 100vh;
    }

    .overlay-box {
      background-color: rgba(255, 255, 255, 0.9); /* slightly transparent */
      border-radius: 12px;
      box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    }
  </style>
</head>
</head>
<body class="bg-light">
<%
  CustomerBean cbean = (CustomerBean) session.getAttribute("cbean");
  ArrayList<ProductBean> productList = (ArrayList<ProductBean>) session.getAttribute("ProductsList");
%>

<div class="container py-5">
  <div class="text-center mb-4">
    <h2 class="text-primary"><u><i>Hello Mr. <%= cbean.getcFname() %>, Available Products</i></u></h2>
  </div>

  <% if (productList == null || productList.isEmpty()) { %>
    <div class="alert alert-warning text-center">Products are NOT available!!!</div>
  <% } else { %>
    <div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">
      <%
        for (ProductBean pb : productList) {
      %>
      <div class="col">
        <div class="card h-100 shadow-sm">
          <div class="card-body">
            <h5 class="card-title text-success"><%= pb.getpName() %></h5>
            <p class="card-text mb-1"><strong>Code:</strong> <%= pb.getpCode() %></p>
            <p class="card-text mb-1"><strong>Company:</strong> <%= pb.getpCompany() %></p>
            <p class="card-text mb-1"><strong>Price:</strong> ₹<%= pb.getpPrice() %></p>
            <p class="card-text"><strong>Available:</strong> <%= pb.getpQuantity() %></p>
          </div>
          <div class="card-footer text-center">
            <a href="buy?pcode=<%= pb.getpCode() %>" class="btn btn-primary w-100">Buy</a>
          </div>
        </div>
      </div>
      <% } %>
    </div>
  <% } %>

  <div class="text-center mt-5">
    <a href="logout" class="btn btn-outline-danger">Logout</a>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
 
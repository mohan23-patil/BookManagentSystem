<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="entity.Book" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Information - BookVault</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" rel="stylesheet">
<style>
body{background:#f5f7fb;font-family:Arial,sans-serif}
.navbar{background:linear-gradient(135deg,#0f172a,#1d4ed8)}
.navbar-brand{font-size:24px;font-weight:bold}
.navbar-brand i{margin-right:8px}
.header{background:linear-gradient(135deg,#2563eb,#1e3a8a);color:white;text-align:center;padding:50px 20px}
.header h1{font-weight:bold}
.card-box{max-width:800px;margin:-35px auto 50px;background:white;border-radius:20px;padding:35px;box-shadow:0 10px 35px rgba(0,0,0,.1);position:relative}
.book-title{font-size:28px;font-weight:bold;color:#1e293b;margin-bottom:25px}
.detail{display:flex;padding:15px 0;border-bottom:1px solid #e5e7eb}
.label{width:180px;font-weight:bold;color:#475569}
.value{color:#1e293b}
.price{color:#16a34a;font-weight:bold}
.qty{background:#dcfce7;color:#166534;padding:6px 12px;border-radius:20px;font-weight:bold}
.btn-custom{border-radius:9px;padding:10px 20px;font-weight:600}
footer{background:#0f172a;color:#94a3b8;text-align:center;padding:20px}
@media(max-width:600px){.card-box{margin:20px 15px 40px;padding:25px}.detail{display:block}.label{width:auto;margin-bottom:5px}}
</style>
</head>
<body>
<nav class="navbar navbar-dark">
<div class="container">
<a class="navbar-brand" href="login_success.jsp"><i class="bi bi-book-half"></i>BookVault</a>
<a href="login_success.jsp" class="btn btn-light btn-sm"><i class="bi bi-speedometer2"></i> Dashboard</a>
</div>
</nav>
<section class="header">
<h1><i class="bi bi-book"></i> Book Information</h1>
<p>Complete details of the selected book</p>
</section>
<div class="container">
<div class="card-box">
<%
Book book=(Book)request.getAttribute("bean");
%>
<div class="book-title"><i class="bi bi-journal-bookmark"></i> Book Details</div>
<div class="detail">
<div class="label">Book Code</div>
<div class="value"><%=book.getCode()%></div>
</div>
<div class="detail">
<div class="label">Book Name</div>
<div class="value"><%=book.getName()%></div>
</div>
<div class="detail">
<div class="label">Author</div>
<div class="value"><%=book.getAuthor()%></div>
</div>
<div class="detail">
<div class="label">Price</div>
<div class="value price">₹<%=book.getPrice()%></div>
</div>
<div class="detail">
<div class="label">Quantity</div>
<div class="value"><span class="qty"><%=book.getQty()%> Available</span></div>
</div>
<div class="mt-4">
<a href="login_success.jsp" class="btn btn-secondary btn-custom"><i class="bi bi-arrow-left"></i> Back</a>
</div>
</div>
</div>
<footer>
<div><i class="bi bi-book-half"></i> BookVault</div>
<small>© 2026 BookVault. All Rights Reserved.</small>
</footer>

</body>
</html>
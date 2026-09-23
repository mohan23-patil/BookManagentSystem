<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="entity.Book" %>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
          rel="stylesheet">


    <style>

        body {
            margin: 0;
            background: #f5f7fb;
            font-family: Arial, sans-serif;
            color: #182848;
        }


        /* =========================
           NAVBAR
        ========================= */

        .navbar {
            background: white;
            padding: 15px 35px;

            box-shadow:
                0 3px 15px rgba(0, 0, 0, 0.06);
        }


        .brand {
            font-size: 25px;
            font-weight: bold;
            color: #182848;
            text-decoration: none;
        }


        .brand i {
            color: #4b6cb7;
            margin-right: 8px;
        }


        .dashboard-btn {
            border-radius: 10px;
            font-weight: 600;
        }


        /* =========================
           MAIN
        ========================= */

        .main-container {
            margin-top: 35px;
            margin-bottom: 50px;
        }


        /* =========================
           PAGE HEADER
        ========================= */

        .page-header {

            background:
                linear-gradient(135deg, #182848, #4b6cb7);

            color: white;

            border-radius: 22px;

            padding: 35px;

            box-shadow:
                0 12px 30px rgba(75, 108, 183, 0.18);
        }


        .page-header h1 {
            font-weight: bold;
        }


        .page-header p {
            color: #e5e7eb;
            margin-bottom: 0;
        }


        .header-icon {
            font-size: 75px;
            opacity: 0.18;
        }


        /* =========================
           SEARCH AREA
        ========================= */

        .search-card {

            background: white;

            border-radius: 18px;

            padding: 20px 25px;

            margin-top: 25px;

            box-shadow:
                0 8px 25px rgba(0, 0, 0, 0.05);
        }


        .search-box {

            height: 48px;

            border-radius: 10px;
        }


        .search-btn {

            height: 48px;

            border-radius: 10px;

            font-weight: 600;
        }


        /* =========================
           TABLE CARD
        ========================= */

        .table-card {

            background: white;

            border-radius: 20px;

            margin-top: 25px;

            padding: 25px;

            box-shadow:
                0 8px 25px rgba(0, 0, 0, 0.06);

            overflow-x: auto;
        }


        .table {

            vertical-align: middle;

            margin-bottom: 0;
        }


        .table thead {

            background: #f1f5ff;
        }


        .table thead th {

            color: #374151;

            font-size: 14px;

            font-weight: 700;

            padding: 16px;

            border: none;

            white-space: nowrap;
        }


        .table tbody td {

            padding: 15px;

            border-color: #eef0f4;

            white-space: nowrap;
        }


        .table tbody tr {

            transition: 0.2s;
        }


        .table tbody tr:hover {

            background: #f8faff;
        }


        /* =========================
           BOOK IMAGE
        ========================= */

        .book-cover {

            width: 55px;
            height: 70px;

            object-fit: cover;

            border-radius: 8px;

            box-shadow:
                0 4px 10px rgba(0,0,0,0.12);
        }


        /* =========================
           BOOK NAME
        ========================= */

        .book-name {

            font-weight: 700;
            color: #182848;
        }


        .author {

            color: #6b7280;
            font-size: 14px;
        }


        /* =========================
           CATEGORY
        ========================= */

        .category {

            background: #eef2ff;

            color: #4b6cb7;

            padding: 6px 12px;

            border-radius: 20px;

            font-size: 13px;

            font-weight: 600;
        }


        /* =========================
           PRICE
        ========================= */

        .price {

            font-weight: 700;

            color: #198754;
        }


        /* =========================
           QUANTITY
        ========================= */

        .quantity {

            font-weight: 600;
        }


        /* =========================
           ACTION BUTTONS
        ========================= */

        .action-btn {

            width: 38px;
            height: 38px;

            border-radius: 9px;

            display: inline-flex;

            align-items: center;

            justify-content: center;
        }


        /* =========================
           EMPTY / FOOTER
        ========================= */

        .table-footer {

            margin-top: 20px;

            color: #6b7280;

            font-size: 14px;
        }


        footer {

            text-align: center;

            color: #6b7280;

            padding: 25px;

            font-size: 14px;
        }


        /* =========================
           MOBILE
        ========================= */

        @media(max-width: 768px) {

            .navbar {
                padding: 15px 20px;
            }

            .page-header {
                padding: 25px;
            }

            .header-icon {
                display: none;
            }

            .table-card {
                padding: 15px;
            }

        }

    </style>
</head>
<body>
<nav class="navbar">

    <div class="container-fluid">


        <!-- LOGO -->

        <a href="login_success.jsp"
           class="brand">

            📚 BookVault

        </a>


        <!-- DASHBOARD -->

        <a href="login_success.jsp"
           class="btn btn-outline-primary dashboard-btn">

            👈

            Dashboard

        </a>


    </div>

</nav>

<div class="container main-container">


    <!-- =================================
         HEADER
    ================================== -->

    <div class="page-header">

        <div class="row align-items-center">

            <div class="col-md-9">

                <p class="fw-semibold mb-2">

                    BOOK MANAGEMENT

                </p>


                <h1>

                    All Books

                </h1>


                <p>

                    View and manage all books available
                    in your library.

                </p>

            </div>


            <div class="col-md-3 text-center">

                <i class="bi bi-collection header-icon"></i>

            </div>

        </div>

    </div>

    <div class="table-card">


        <div class="d-flex justify-content-between
                    align-items-center mb-3">


            <h4 class="fw-bold mb-0">

                📚 Books Collection

            </h4>

        </div>



        <table class="table">


            <!-- TABLE HEADER -->

            <thead>

                <tr>

                    <th>
                        Code
                    </th>

                    <th>
                        Name
                    </th>

                    <th>
                        Author
                    </th>

                    <th>
                        Price
                    </th>

                    <th>
                        Quantity
                    </th>

                    <th>
                        Action
                    </th>
                </tr>

            </thead>
            <tbody>
             <% List<Book> books = (List<Book>) request.getAttribute("list");
                    for(Book b : books)
                 {
             %>
                <tr>
                    <td>

                        <strong>
                            <%=b.getCode() %>
                        </strong>

                    </td>


                    <td>

                        <div class="book-name">
                        <%=b.getName() %>
                        </div>

                    </td>


                    <td>
                        <div class="author">
                        <%=b.getAuthor() %>
                        </div>
                    </td>
                    <td class="price">
                    <%=b.getPrice() %>
                    </td>
                    <td class="quantity">
                    <%=b.getQty() %>
                    </td>

                    <td class="price">
                    <button class="btn btn-primary fw-bold text-decoration-none"><a href="editservlet?code=<%=b.getCode()%>" class="text-dark">Edit</a></button>
                    <button class = "btn btn-danger fw-bold"><a href=""></a>🗑️ Delete</button>
                    </td>

                </tr>
                <%
                        }
                %>
            </tbody>
        </table>
    </div>
</div>
  <footer>

      © 2026 BookVault · Book Management System

  </footer>
</body>
</html>
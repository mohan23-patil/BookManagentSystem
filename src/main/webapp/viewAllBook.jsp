<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="entity.Book" %>

<html>

<head>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
          rel="stylesheet">

    <style>

        body {
            margin: 0;
            background: #f5f7fb;
            font-family: Arial, sans-serif;
            color: #182848;
        }

        .navbar {
            background: white;
            padding: 15px 35px;
            box-shadow: 0 3px 15px rgba(0,0,0,0.06);
        }

        .brand {
            font-size: 25px;
            font-weight: bold;
            color: #182848;
            text-decoration: none;
        }

        .dashboard-btn {
            border-radius: 10px;
            font-weight: 600;
        }

        .main-container {
            margin-top: 35px;
            margin-bottom: 50px;
        }

        .page-header {
            background: linear-gradient(135deg, #182848, #4b6cb7);
            color: white;
            border-radius: 22px;
            padding: 35px;
            box-shadow: 0 12px 30px rgba(75,108,183,0.18);
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

        .table-card {
            background: white;
            border-radius: 20px;
            margin-top: 25px;
            padding: 25px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.06);
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

        .book-name {
            font-weight: 700;
            color: #182848;
        }

        .author {
            color: #6b7280;
            font-size: 14px;
        }

        .price {
            font-weight: 700;
            color: #198754;
        }

        .quantity {
            font-weight: 600;
        }

        .success-popup {
            position: fixed;
            right: 25px;
            bottom: 25px;
            min-width: 320px;
            padding: 16px 20px;
            border-radius: 12px;
            background: #198754;
            color: white;
            display: flex;
            align-items: center;
            gap: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.20);
            z-index: 9999;
            animation: popupShow 0.4s ease;
        }

        .error-popup {
            position: fixed;
            right: 25px;
            bottom: 25px;
            min-width: 320px;
            padding: 16px 20px;
            border-radius: 12px;
            background: #dc3545;
            color: white;
            display: flex;
            align-items: center;
            gap: 12px;
            box-shadow: 0 8px 25px rgba(0,0,0,0.20);
            z-index: 9999;
            animation: popupShow 0.4s ease;
        }

        .popup-icon {
            width: 32px;
            height: 32px;
            min-width: 32px;
            border-radius: 50%;
            background: rgba(255,255,255,0.20);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 18px;
            font-weight: bold;
        }

        .success-popup.hide,
        .error-popup.hide {
            animation: popupHide 0.5s ease forwards;
        }

        @keyframes popupShow {

            from {
                opacity: 0;
                transform: translateY(30px);
            }

            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        @keyframes popupHide {

            from {
                opacity: 1;
                transform: translateY(0);
            }

            to {
                opacity: 0;
                transform: translateY(30px);
            }
        }

        footer {
            text-align: center;
            color: #6b7280;
            padding: 25px;
            font-size: 14px;
        }

        @media(max-width:768px) {

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

            .success-popup,
            .error-popup {
                right: 15px;
                left: 15px;
                bottom: 15px;
                min-width: auto;
            }
        }

    </style>

</head>

<body>

<nav class="navbar">

    <div class="container-fluid">

        <a href="login_success.jsp"
           class="brand">

            📚 BookVault

        </a>

        <a href="login_success.jsp"
           class="btn btn-outline-primary dashboard-btn">

            👈 Dashboard

        </a>

    </div>

</nav>


<div class="container main-container">

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

            <thead>

                <tr>

                    <th>Code</th>

                    <th>Name</th>

                    <th>Author</th>

                    <th>Price</th>

                    <th>Quantity</th>

                    <th>Action</th>

                </tr>

            </thead>


            <tbody>

            <%
                List<Book> books =
                        (List<Book>) request.getAttribute("list");

                if (books != null && !books.isEmpty())
                {
                    for (Book b : books)
                    {
            %>

                <tr>

                    <td>

                        <strong>
                            <%= b.getCode() %>
                        </strong>

                    </td>


                    <td>

                        <div class="book-name">
                            <%= b.getName() %>
                        </div>

                    </td>


                    <td>

                        <div class="author">
                            <%= b.getAuthor() %>
                        </div>

                    </td>


                    <td class="price">

                        <%= b.getPrice() %>

                    </td>


                    <td class="quantity">

                        <%= b.getQty() %>

                    </td>


                    <td>

                        <a href="editservlet?code=<%= b.getCode() %>"
                           class="btn btn-primary fw-bold">

                            ✏️ Edit

                        </a>


                        <form action="delete"
                              method="post"
                              style="display:inline;">

                            <input type="hidden"
                                   name="code"
                                   value="<%= b.getCode() %>">

                            <button type="submit"
                                    class="btn btn-danger fw-bold"
                                    onclick="return confirm('Are you sure you want to delete this book?');">

                                🗑️ Delete

                            </button>

                        </form>

                    </td>

                </tr>

            <%
                    }
                }
                else
                {
            %>

                <tr>

                    <td colspan="6"
                        class="text-center py-5">

                        📚 No Books Available

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


<%
    String message = (String) request.getAttribute("msg");

    if (message != null)
    {
%>

<div class="success-popup"
     id="successPopup">

    <div class="popup-icon">
        ✓
    </div>

    <div>
        <%= message %>
    </div>

</div>

<script>

    setTimeout(function()
    {
        const popup =
            document.getElementById("successPopup");

        if (popup)
        {
            popup.classList.add("hide");

            setTimeout(function()
            {
                popup.remove();
            }, 500);
        }

    }, 5000);

</script>

<%
    }
%>


</body>

</html>
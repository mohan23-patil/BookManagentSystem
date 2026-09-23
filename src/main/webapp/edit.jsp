<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="entity.Book"%>

<%
    Book book = (Book) request.getAttribute("book");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Edit Book - BookVault</title>

    <!-- Bootstrap -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
          rel="stylesheet">

    <style>

        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            min-height: 100vh;
            background: #f5f7fb;
            font-family: Arial, sans-serif;
            color: #182848;
        }

        /* =========================
           NAVBAR
        ========================= */

        .navbar {
            background: white;
            padding: 15px 40px;
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.06);
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
            padding: 9px 18px;
        }

        /* =========================
           MAIN CONTAINER
        ========================= */

        .main-container {
            max-width: 850px;
            margin: 50px auto;
            padding: 0 20px;
        }

        /* =========================
           HEADER
        ========================= */

        .page-header {
            background: linear-gradient(135deg, #182848, #4b6cb7);
            color: white;
            border-radius: 22px 22px 0 0;
            padding: 30px 35px;
            box-shadow: 0 12px 30px rgba(75, 108, 183, 0.18);
        }

        .page-header h1 {
            margin: 0;
            font-size: 30px;
            font-weight: bold;
        }

        .page-header p {
            margin: 8px 0 0;
            color: #e5e7eb;
        }

        .header-icon {
            font-size: 65px;
            opacity: 0.18;
        }

        /* =========================
           FORM CARD
        ========================= */

        .form-card {
            background: white;
            padding: 35px;
            border-radius: 0 0 22px 22px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.07);
        }

        .book-code {
            background: #f1f5ff;
            border: 1px solid #dbe4ff;
            color: #4b6cb7;
            padding: 12px 15px;
            border-radius: 10px;
            font-weight: 600;
            margin-bottom: 25px;
        }

        .form-label {
            font-weight: 600;
            color: #374151;
            margin-bottom: 8px;
        }

        .input-group-text {
            background: #f8faff;
            border-color: #dfe3eb;
            color: #4b6cb7;
        }

        .form-control {
            height: 48px;
            border: 1px solid #dfe3eb;
            border-radius: 0 10px 10px 0;
            padding: 10px 14px;
            font-size: 15px;
        }

        .form-control:focus {
            border-color: #4b6cb7;
            box-shadow: 0 0 0 3px rgba(75, 108, 183, 0.12);
        }

        .input-group {
            margin-bottom: 22px;
        }

        /* =========================
           BUTTONS
        ========================= */

        .button-area {
            margin-top: 15px;
            padding-top: 25px;
            border-top: 1px solid #eef0f4;
            display: flex;
            gap: 12px;
            justify-content: flex-end;
        }

        .update-btn {
            background: linear-gradient(135deg, #182848, #4b6cb7);
            color: white;
            border: none;
            padding: 12px 25px;
            border-radius: 10px;
            font-weight: 600;
            transition: 0.2s;
        }

        .update-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(75, 108, 183, 0.25);
            color: white;
        }

        .cancel-btn {
            padding: 12px 22px;
            border-radius: 10px;
            font-weight: 600;
        }

        /* =========================
           FOOTER
        ========================= */

        footer {
            text-align: center;
            color: #6b7280;
            padding: 20px;
            font-size: 14px;
        }

        /* =========================
           MOBILE
        ========================= */

        @media (max-width: 768px) {

            .navbar {
                padding: 15px 20px;
            }

            .main-container {
                margin-top: 30px;
            }

            .page-header {
                padding: 25px;
            }

            .header-icon {
                display: none;
            }

            .form-card {
                padding: 25px;
            }

            .button-area {
                flex-direction: column;
            }

            .update-btn,
            .cancel-btn {
                width: 100%;
            }
        }

    </style>
</head>

<body>

<!-- =========================
     NAVBAR
========================= -->

<nav class="navbar">

    <div class="container-fluid d-flex justify-content-between align-items-center">

        <a href="login_success.jsp" class="brand">

            📚 BookVault
        </a>

        <a href="login_success.jsp"
           class="btn btn-outline-primary dashboard-btn">

           👈
            Dashboard

        </a>

    </div>

</nav>


<!-- =========================
     MAIN
========================= -->

<div class="main-container">

    <!-- HEADER -->

    <div class="page-header">

        <div class="row align-items-center">

            <div class="col-md-9">

                <p class="fw-semibold mb-2">
                    BOOK MANAGEMENT
                </p>

                <h1>
                    <i class="bi bi-pencil-square me-2"></i>
                    Edit Book
                </h1>

                <p>
                    Update the details of the selected book.
                </p>

            </div>

            <div class="col-md-3 text-center">

                <i class="bi bi-journal-bookmark header-icon"></i>

            </div>

        </div>

    </div>


    <!-- FORM -->

    <div class="form-card">

        <div class="book-code">

            <i class="bi bi-upc-scan me-2"></i>

            Book Code :
            <strong><%=book.getCode()%></strong>

        </div>


        <form action="edit" method="post">

            <!-- BOOK NAME -->

            <label class="form-label">
                Book Name
            </label>

            <div class="input-group">

                <span class="input-group-text">
                    <i class="bi bi-book"></i>
                </span>

                <input type="text"
                       class="form-control"
                       name="name"
                       value="<%=book.getName()%>"
                       required>

            </div>


            <!-- AUTHOR -->

            <label class="form-label">
                Author Name
            </label>

            <div class="input-group">

                <span class="input-group-text">
                    <i class="bi bi-person"></i>
                </span>

                <input type="text"
                       class="form-control"
                       name="author"
                       value="<%=book.getAuthor()%>"
                       required>

            </div>


            <div class="row">

                <!-- PRICE -->

                <div class="col-md-6">

                    <label class="form-label">
                        Price
                    </label>

                    <div class="input-group">

                        <span class="input-group-text">
                            <i class="bi bi-currency-rupee"></i>
                        </span>

                        <input type="number"
                               class="form-control"
                               name="price"
                               value="<%=book.getPrice()%>"
                               min="0"
                               required>

                    </div>

                </div>


                <!-- QUANTITY -->

                <div class="col-md-6">

                    <label class="form-label">
                        Quantity
                    </label>

                    <div class="input-group">

                        <span class="input-group-text">
                            <i class="bi bi-box-seam"></i>
                        </span>

                        <input type="number"
                               class="form-control"
                               name="qty"
                               value="<%=book.getQty()%>"
                               min="0"
                               required>

                    </div>

                </div>

            </div>


            <!-- HIDDEN CODE -->

            <input type="hidden"
                   name="code"
                   value="<%=book.getCode()%>">


            <!-- BUTTONS -->

            <div class="button-area">

                <a href="login_success.jsp"
                   class="btn btn-outline-secondary cancel-btn">

                    <i class="bi bi-x-circle me-2"></i>
                    Cancel

                </a>

                <button type="submit"
                        class="update-btn">

                    <i class="bi bi-check-circle me-2"></i>
                    Update Book

                </button>

            </div>

        </form>

    </div>

</div>


<!-- FOOTER -->

<footer>
    © 2026 BookVault · Book Management System
</footer>


</body>
</html>
```

<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import = "entity.Admin"%>

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
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.06);
            padding: 15px 35px;
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


        .logout-btn {
            border-radius: 10px;
            padding: 9px 18px;
            font-weight: 600;
        }


        /* =========================
           HERO SECTION
        ========================= */

        .hero-section {
            background: linear-gradient(135deg, #182848, #4b6cb7);
            color: white;

            border-radius: 25px;

            padding: 45px;

            margin-top: 35px;

            box-shadow: 0 12px 30px rgba(75, 108, 183, 0.20);
        }


        .hero-title {
            font-size: 38px;
            font-weight: bold;
        }


        .hero-text {
            color: #e5e7eb;
            font-size: 17px;
            margin-top: 10px;
        }


        .hero-icon {
            font-size: 100px;
            opacity: 0.15;
        }


        /* =========================
           SECTION TITLE
        ========================= */

        .section-title {
            font-weight: bold;
            margin-top: 45px;
            margin-bottom: 25px;
        }


        /* =========================
           DASHBOARD CARDS
        ========================= */

        .dashboard-card {
            background: white;

            border: none;

            border-radius: 20px;

            padding: 30px;

            height: 100%;

            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.06);

            transition: 0.3s;
        }


        .dashboard-card:hover {
            transform: translateY(-7px);

            box-shadow:
                0 15px 35px rgba(0, 0, 0, 0.10);
        }


        .card-icon {

            width: 70px;
            height: 70px;

            border-radius: 18px;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 32px;

            margin-bottom: 22px;
        }


        .add-icon {
            background: #e8f0ff;
            color: #4b6cb7;
        }


        .view-icon {
            background: #e9f9f0;
            color: #198754;
        }


        .search-icon {
            background: #fff3df;
            color: #f59e0b;
        }


        .card-title {
            font-size: 22px;
            font-weight: bold;
            margin-bottom: 12px;
        }


        .card-text {
            color: #6b7280;
            line-height: 1.6;
        }


        .card-btn {
            border-radius: 10px;
            padding: 10px 20px;
            font-weight: 600;
            margin-top: 10px;
        }


        /* =========================
           QUICK INFO
        ========================= */

        .info-box {

            background: white;

            border-radius: 18px;

            padding: 25px;

            margin-top: 35px;

            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.05);
        }


        .info-icon {

            width: 50px;
            height: 50px;

            background: #eef2ff;

            border-radius: 14px;

            display: flex;
            align-items: center;
            justify-content: center;

            color: #4b6cb7;

            font-size: 24px;
        }


        /* =========================
           FOOTER
        ========================= */

        footer {

            margin-top: 50px;

            padding: 25px;

            text-align: center;

            color: #6b7280;

            font-size: 14px;
        }


        /* =========================
           MOBILE
        ========================= */

        @media(max-width: 768px) {

            .navbar {
                padding: 15px 20px;
            }

            .hero-section {
                padding: 30px;
            }

            .hero-title {
                font-size: 30px;
            }

            .hero-icon {
                display: none;
            }

        }

    </style>
 </head>
<body>
<%
    String name = (String)session.getAttribute("name");
 %>
 <nav class="navbar">

     <div class="container-fluid">

         <!-- LOGO -->

         <a href="#" class="brand">
          📚 BookVault
         </a>


         <!-- LOGOUT -->

         <a href="adminLogin.jsp"
            class="btn btn-outline-danger logout-btn">
               👉 Logout
         </a>

     </div>

 </nav>
 <div class="container">


     <!-- =================================
          HERO
     ================================== -->

     <div class="hero-section">

         <div class="row align-items-center">

             <div class="col-md-8">

                 <p class="mb-2 fw-semibold">

                     ADMIN DASHBOARD

                 </p>


                 <h1 class="hero-title">

                     Welcome Back, <%=name%>👋

                 </h1>


                 <p class="hero-text mb-0">

                     Manage your books, update records,
                     and keep your library organized
                     from one place.

                 </p>

             </div>


             <div class="col-md-4 text-center">

                 <i class="bi bi-journals hero-icon"></i>

             </div>

         </div>

     </div>



     <!-- =================================
          MANAGEMENT SECTION
     ================================== -->

     <h2 class="section-title">

        📚 Book Management

     </h2>


     <div class="row g-4">


         <!-- =============================
              ADD BOOK
         ============================== -->

         <div class="col-lg-4 col-md-6">

             <div class="dashboard-card">


                 <div class="card-icon add-icon">

                     <i class="bi bi-plus-lg"></i>

                 </div>


                 <h3 class="card-title">

                     Add New Book

                 </h3>


                 <p class="card-text">

                     Add a new book to your library.
                     Enter book details and store
                     them in your collection.

                 </p>


                 <a href="addBook.html"
                    class="btn btn-primary card-btn">



                    👉 Add Book

                 </a>


             </div>

         </div>



         <!-- =============================
              VIEW ALL BOOKS
         ============================== -->

         <div class="col-lg-4 col-md-6">

             <div class="dashboard-card">


                 <div class="card-icon view-icon">

                     <i class="bi bi-collection"></i>

                 </div>


                 <h3 class="card-title">

                    📖 View All Books

                 </h3>


                 <p class="card-text">

                     View your complete book collection
                     and manage existing book records
                     from one place.

                 </p>


                 <a href="viewAllBook"
                    class="btn btn-success card-btn">

                     👀
                     View All Books

                 </a>


             </div>

         </div>



         <!-- =============================
              VIEW BY ID
         ============================== -->

         <div class="col-lg-4 col-md-6">

             <div class="dashboard-card">


                 <div class="card-icon search-icon">

                     <i class="bi bi-search"></i>

                 </div>


                 <h3 class="card-title">

                     Find Book

                 </h3>


                 <p class="card-text">

                     Search for a specific book using
                     its Book ID and quickly view
                     its complete details.

                 </p>


                 <a href="viewBookByID.html"
                    class="btn btn-warning card-btn">

                    🔎 Find Book

                 </a>


             </div>

         </div>


     </div>



     <!-- =================================
          QUICK INFO
     ================================== -->

     <div class="info-box">

         <div class="row align-items-center">


             <div class="col-auto">

                 <div class="info-icon">

                     <i class="bi bi-lightbulb"></i>

                 </div>

             </div>


             <div class="col">

                 <h5 class="fw-bold mb-1">

                     Quick Tip

                 </h5>


                 <p class="text-muted mb-0">

                     Use the options above to add,
                     view, search, update, or delete
                     books from your library.

                 </p>

             </div>


         </div>

     </div>
 </div>
 <footer>

     © 2026 BookVault · Book Management System

 </footer>
</body>
</html>
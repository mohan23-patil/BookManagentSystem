<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<%
    String message = (String) request.getAttribute("msg");
    String messageType = (String) request.getAttribute("type");
%>

<html>
<head>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
          rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css"
          rel="stylesheet">

    <style>

        body {
            margin: 0;
            min-height: 100vh;
            background: #f5f7fb;
            font-family: Arial, sans-serif;
        }

        .main-container {
            min-height: 100vh;
        }

        .left-section {
            min-height: 100vh;
            background: linear-gradient(135deg, #182848, #4b6cb7);
            color: white;

            display: flex;
            align-items: center;
            justify-content: center;

            padding: 50px;
        }

        .brand-content {
            max-width: 450px;
        }

        .book-icon {
            width: 80px;
            height: 80px;

            background: rgba(255,255,255,0.15);

            border-radius: 20px;

            display: flex;
            align-items: center;
            justify-content: center;

            font-size: 40px;

            margin-bottom: 25px;
        }

        .brand-title {
            font-size: 52px;
            font-weight: bold;
        }

        .brand-text {
            font-size: 18px;
            color: #e5e7eb;
            line-height: 1.7;
        }

        .feature {
            margin-top: 25px;
        }

        .feature i {
            font-size: 20px;
            margin-right: 10px;
        }

        .right-section {
            min-height: 100vh;

            display: flex;
            align-items: center;
            justify-content: center;

            padding: 30px;
        }

        .login-card {
            width: 100%;
            max-width: 430px;

            background: white;

            padding: 45px;

            border-radius: 22px;

            box-shadow: 0 15px 40px rgba(0,0,0,0.08);
        }

        .login-title {
            font-weight: bold;
            color: #182848;
        }

        .login-subtitle {
            color: #6b7280;
        }

        .form-label {
            font-weight: 600;
            color: #374151;
        }

        .form-control {
            height: 52px;
            border-radius: 12px;
        }

        .form-control:focus {
            border-color: #4b6cb7;
            box-shadow: 0 0 0 3px rgba(75,108,183,0.15);
        }

        .login-btn {
            height: 52px;

            border-radius: 12px;

            background: #4b6cb7;

            border: none;

            font-weight: bold;
        }

        .login-btn:hover {
            background: #3b5998;
        }

        .register-link {
            color: #4b6cb7;
            text-decoration: none;
            font-weight: bold;
        }

        .register-link:hover {
            text-decoration: underline;
        }

        /* LOGIN POPUP */

        .login-popup {
            position: fixed;

            right: 25px;
            bottom: 25px;

            min-width: 320px;

            padding: 16px 20px;

            border-radius: 12px;

            color: white;

            display: flex;
            align-items: center;

            gap: 12px;

            box-shadow: 0 8px 25px rgba(0,0,0,0.20);

            z-index: 9999;

            animation: popupShow 0.4s ease;
        }

        .login-popup.success {
            background: #198754;
        }

        .login-popup.failed {
            background: #dc3545;
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

        .login-popup.hide {
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

        @media(max-width: 768px) {

            .left-section {
                display: none;
            }

            .right-section {
                background: #f5f7fb;
            }

            .login-card {
                padding: 30px 25px;
            }

            .login-popup {
                right: 15px;
                left: 15px;
                bottom: 15px;

                min-width: auto;
            }

        }

    </style>

</head>

<body>

<form action="login" method="post">

    <div class="container-fluid">

        <div class="row main-container">

            <div class="col-lg-6 left-section">

                <div class="brand-content">

                    <div class="book-icon">
                        <i class="bi bi-book-half"></i>
                    </div>

                    <h1 class="brand-title">
                        BookVault
                    </h1>

                    <p class="brand-text">
                        Your simple and powerful book management
                        system. Manage your entire collection
                        from one place.
                    </p>

                    <div class="feature">
                        <i class="bi bi-check-circle-fill"></i>
                        Easy Book Management
                    </div>

                    <div class="feature">
                        <i class="bi bi-check-circle-fill"></i>
                        Search Books Quickly
                    </div>

                    <div class="feature">
                        <i class="bi bi-check-circle-fill"></i>
                        Update & Manage Records
                    </div>

                </div>

            </div>

            <div class="col-lg-6 right-section">

                <div class="login-card">

                    <div class="text-center mb-4">

                        <h2 class="login-title">
                            Welcome Back 👋
                        </h2>

                        <p class="login-subtitle">
                            Login to your BookVault account
                        </p>

                    </div>

                    <div class="mb-3">

                        <label class="form-label">
                            Username
                        </label>

                        <div class="input-group">

                            <span class="input-group-text bg-white">
                                🧑‍
                            </span>

                            <input type="text"
                                   class="form-control"
                                   placeholder="Enter username"
                                   name="aname"
                                   required>

                        </div>

                    </div>

                    <div class="mb-4">

                        <label class="form-label">
                            Password
                        </label>

                        <div class="input-group">

                            <span class="input-group-text bg-white">
                                🔐
                            </span>

                            <input type="password"
                                   class="form-control"
                                   placeholder="Enter password"
                                   name="pword"
                                   required>

                        </div>

                    </div>

                    <button type="submit"
                            class="btn btn-primary login-btn w-100">

                        👉 Login

                    </button>

                    <div class="text-center mt-4">

                        <span class="text-muted">
                            Don't have an account?
                        </span>

                        <a href="admin_Registration.jsp"
                           class="register-link ms-1">

                            Create Account

                        </a>

                    </div>

                </div>

            </div>

        </div>

    </div>

</form>


<%
    if (message != null)
    {
%>

<div class="login-popup <%= "success".equals(messageType) ? "success" : "failed" %>"
     id="loginPopup">

    <div class="popup-icon">
        <%= "success".equals(messageType) ? "✓" : "✕" %>
    </div>

    <div>
        <%= message %>
    </div>

</div>

<script>

    setTimeout(function()
    {
        const popup = document.getElementById("loginPopup");

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
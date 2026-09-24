package com.servlet;

import dao.AdminDao;
import entity.Admin;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class AdminLoginServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        String name = req.getParameter("aname");
        String pass = req.getParameter("pword");

        Admin admin = new AdminDao().login(name, pass);

        if (admin != null)
        {
            HttpSession session = req.getSession();
            session.setAttribute("name", admin.getAdminName());

            req.setAttribute("msg", "Login Successfully");
            req.getRequestDispatcher("login_success.jsp").forward(req, resp);
        }
        else
        {
            req.setAttribute("msg", "Username and Password Incorrect");
            req.getRequestDispatcher("adminLogin.jsp").forward(req, resp);
        }
    }
}
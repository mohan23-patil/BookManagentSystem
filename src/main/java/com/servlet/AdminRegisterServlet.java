package com.servlet;

import dao.AdminDao;
import entity.Admin;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
@WebServlet("/register")
public class AdminRegisterServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String aName = req.getParameter("aname");
        String passw = req.getParameter("pword");
        String fName = req.getParameter("fname");
        String lName = req.getParameter("lname");
        String mail = req.getParameter("mail");
        long mobNo = Long.parseLong(req.getParameter("phno"));
        Admin admin = new Admin();
        admin.setAdminName(aName);
        admin.setPassword(passw);
        admin.setFirstName(fName);
        admin.setLastName(lName);
        admin.setMailId(mail);
        admin.setMobNo(mobNo);
        int k = new AdminDao().register(admin);
        if (k>0)
        {
            req.setAttribute("msg","Registration is SuccessFully");
            req.getRequestDispatcher("adminLogin.jsp").forward(req,resp);
        }
        else
        {
            req.setAttribute("msg","Something is Wrong");
            req.getRequestDispatcher("registrationError.jsp").forward(req,resp);
        }
    }
}

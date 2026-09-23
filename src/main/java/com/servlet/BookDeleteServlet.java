package com.servlet;

import dao.Bookdao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/delete")
public class BookDeleteServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String code = req.getParameter("code");
        int k = new Bookdao().deleteBookById(code);
        if (k > 0)
        {
            req.setAttribute("msg","Book Deleted SuccessFully");
            req.getRequestDispatcher("delete_Success.jsp").forward(req,resp);
        }
        else
        {
            req.setAttribute("msg","Book is Not Deleted ");
            req.getRequestDispatcher("delete_Failed.jsp").forward(req,resp);
        }
    }
}

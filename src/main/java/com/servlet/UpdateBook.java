package com.servlet;

import dao.Bookdao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/edit")
public class UpdateBook extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String code = req.getParameter("code");
        String name = req.getParameter("name");
        String author = req.getParameter("author");
        double price = Double.parseDouble(req.getParameter("price"));
        int qty = Integer.parseInt(req.getParameter("qty"));
        int k = new Bookdao().updateBook(code,name,author,price,qty);
        if (k > 0)
        {
            req.setAttribute("msg","Book Details Updated SuccessFully");
            req.getRequestDispatcher("book_updateSuccess.jsp").forward(req,resp);
        }
        else
        {
            req.setAttribute("msg","Book Details Not Updated");
            req.getRequestDispatcher("book_updateFailed.jsp").forward(req,resp);
        }
    }
}

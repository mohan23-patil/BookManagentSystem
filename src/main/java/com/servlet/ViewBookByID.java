package com.servlet;

import dao.Bookdao;
import entity.Book;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/getById")
public class ViewBookByID extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String code = req.getParameter("code");
        Book book = new Bookdao().getBookById(code);
        if (book != null)
        {
            req.setAttribute("bean",book);
            req.getRequestDispatcher("viewBook.jsp").forward(req,resp);
        }
        else
        {
            req.setAttribute("bean","Book is Not Found");
            req.getRequestDispatcher("error.jsp").forward(req,resp);
        }
    }
}

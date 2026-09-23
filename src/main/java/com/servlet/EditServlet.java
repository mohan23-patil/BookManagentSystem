package com.servlet;

import dao.Bookdao;
import entity.Book;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/editservlet")
public class EditServlet extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String code = req.getParameter("code");
        Book book = new Bookdao().getBookById(code);
        if (book != null)
        {
            req.setAttribute("book",book);
            req.getRequestDispatcher("edit.jsp").forward(req,resp);
        }
    }
}

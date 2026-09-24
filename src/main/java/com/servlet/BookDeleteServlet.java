package com.servlet;

import dao.Bookdao;
import entity.Book;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet("/delete")
public class BookDeleteServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException
    {
        String code = req.getParameter("code");

        int k = new Bookdao().deleteBookById(code);

        if (k > 0)
        {
            List<Book> list = new Bookdao().viewAllBook();

            req.setAttribute("list", list);
            req.setAttribute("msg", "Book Deleted Successfully");

            req.getRequestDispatcher("viewAllBook.jsp")
                    .forward(req, resp);
        }
        else
        {
            req.setAttribute("msg", "Book is Not Deleted");

            req.getRequestDispatcher("viewAllBook.jsp")
                    .forward(req, resp);
        }
    }
}
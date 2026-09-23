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
@WebServlet("/viewAllBook")
public class BookView extends HttpServlet
{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<Book> list = new Bookdao().viewAllBook();
        if (list != null)
        {
            req.setAttribute("list", list);
            req.getRequestDispatcher("viewAllBook.jsp").forward(req,resp);
        }
    }
}

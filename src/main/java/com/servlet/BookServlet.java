package com.servlet;

import dao.Bookdao;
import entity.Book;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/book")
public class BookServlet extends HttpServlet
{
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String code = req.getParameter("code");
        String name = req.getParameter("name");
        String author = req.getParameter("author");
        double price = Double.parseDouble(req.getParameter("price"));
        int qty = Integer.parseInt(req.getParameter("qty"));
        Book b = new Book();
        b.setCode(code);
        b.setName(name);
        b.setAuthor(author);
        b.setPrice(price);
        b.setQty(qty);
        int rowCount = new Bookdao().insertBook(b);
        if (rowCount > 0)
        {
            req.setAttribute("msg","Book Information Store SuccessFully");
            req.getRequestDispatcher("login_success.jsp").forward(req,resp);
        }
        else
        {
            req.setAttribute("msg","Book Not Stored");
            req.getRequestDispatcher("").forward(req,resp);
        }

    }
}

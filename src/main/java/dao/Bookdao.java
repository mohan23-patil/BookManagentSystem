package dao;

import dbConnection.DBConnection;
import entity.Book;
import jakarta.servlet.http.Cookie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class Bookdao
{
    public int insertBook(Book book)
    {
        int k = 0;
       try {
           Connection con = DBConnection.getConnection();
           PreparedStatement pstm = con.prepareStatement("insert into bookdetails values(?,?,?,?,?)");
           pstm.setString(1, book.getCode());
           pstm.setString(2,book.getName());
           pstm.setString(3,book.getAuthor());
           pstm.setDouble(4,book.getPrice());
           pstm.setInt(5,book.getQty());
           k = pstm.executeUpdate();
       } catch (Exception e) {
           e.printStackTrace();
       }
        return k;
    }

    public List<Book> viewAllBook()
    {
        List<Book> list = new ArrayList<Book>();
        try
        {
            Connection con = DBConnection.getConnection();
            PreparedStatement pstm = con.prepareStatement("select * from bookdetails");
            ResultSet rs = pstm.executeQuery();
            while (rs.next())
            {
                Book book = new Book(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4),rs.getInt(5));
                list.add(book);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public Book getBookById(String code)
    {
        Book b = null;
        try
        {
            Connection con = DBConnection.getConnection();
            PreparedStatement pstm = con.prepareStatement("select * from bookdetails where code = ?");
            pstm.setString(1, code);
            ResultSet rs = pstm.executeQuery();
            if (rs.next())
            {
                b = new Book(rs.getString(1), rs.getString(2), rs.getString(3), rs.getDouble(4), rs.getInt(5));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return b;
    }

    public int updateBook(String code, String name, String author, double price,int qty)
    {
        int k = 0;
        try
        {
            Connection con = DBConnection.getConnection();
            PreparedStatement pstm = con.prepareStatement("update bookdetails set name = ?, author = ?, price = ?, qty = ? where code = ? ");
            pstm.setString(1,name);
            pstm.setString(2,author);
            pstm.setDouble(3,price);
            pstm.setInt(4,qty);
            pstm.setString(5,code);
            k = pstm.executeUpdate();
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }
        return k;
    }

    public int deleteBookById(String code)
    {
        int k = 0;
        try
        {
            Connection connection = DBConnection.getConnection();
            PreparedStatement pstm = connection.prepareStatement("delete from bookdetails where code = ?");
            pstm.setString(1,code);
           k = pstm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return k;
    }
}

package entity;

import java.io.Serializable;

public class Book implements Serializable
{
    private String code;
    private String name;
    private String author;
    private double price;
    private int qty;

    public Book()
    {
        super();
    }

    public Book(String code, String name, String author, double price, int qty) {
        this.code = code;
        this.name = name;
        this.author = author;
        this.price = price;
        this.qty = qty;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }
}

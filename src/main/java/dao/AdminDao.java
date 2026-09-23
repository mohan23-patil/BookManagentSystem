package dao;

import dbConnection.DBConnection;
import entity.Admin;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AdminDao
{
    public int register(Admin admin)
    {
        int k = 0;
        try
        {
            Connection con = DBConnection.getConnection();
            PreparedStatement pstm = con.prepareStatement("insert into adminbook values(?,?,?,?,?,?)");
            pstm.setString(1, admin.getAdminName());
            pstm.setString(2, admin.getPassword());
            pstm.setString(3, admin.getFirstName());
            pstm.setString(4, admin.getLastName());
            pstm.setString(5, admin.getMailId());
            pstm.setLong(6,admin.getMobNo());
            k = pstm.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return k;
    }

    public Admin login(String name, String pass)
    {
        Admin admin = null;
        try
        {
            Connection con = DBConnection.getConnection();
            PreparedStatement pstm = con.prepareStatement("select * from adminBook where adminname = ? and password = ?");
            pstm.setString(1,name);
            pstm.setString(2,pass);
            ResultSet rs = pstm.executeQuery();
            if (rs.next())
            {
                admin = new Admin();
                admin.setAdminName(rs.getString(1));
                admin.setPassword(rs.getString(2));
                admin.setFirstName(rs.getString(3));
                admin.setLastName(rs.getString(4));
                admin.setMailId(rs.getString(5));
                admin.setMobNo(rs.getLong(6));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return admin;
    }
}

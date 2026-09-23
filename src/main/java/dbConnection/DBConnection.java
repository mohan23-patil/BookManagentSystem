package dbConnection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection
{
    private DBConnection(){}

    private static Connection con = null;

    public static Connection getConnection()
    {
        try
        {
            if (con == null)
            {
                Class.forName("com.mysql.cj.jdbc.Driver");

                String url = System.getenv("DB_URL");
                String username = System.getenv("DB_USERNAME");
                String password = System.getenv("DB_PASSWORD");

                con = DriverManager.getConnection(url, username, password);
            }
            else
            {
                return con;
            }
        }
        catch (Exception e)
        {
            e.printStackTrace();
        }

        return con;
    }
}
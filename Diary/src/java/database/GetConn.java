package database;

import java.sql.*;

public class GetConn {

    static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null || con.isClosed()) {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql:_URL", "USER_ID", "PASSWORD");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return con;
    }
}

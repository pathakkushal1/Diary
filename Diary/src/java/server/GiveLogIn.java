package server;

import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GiveLogIn {

    static String name;
    public static boolean getuserdata(String user, String pass) {
      
        try {
            Connection con = database.GetConn.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from diary_user where userid=? and pass=?");
            pst.setString(1, user);
            pst.setString(2, pass);
            ResultSet rst = pst.executeQuery();
            if (rst.next()) {
                name=rst.getString(1);
                return true;
            } else {
                return false;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("CONNECTION ERROR");
        }
        return false;
    }
    public static String getName(){
        return name;
    }
}

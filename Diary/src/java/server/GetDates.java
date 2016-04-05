package server;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class GetDates {

    static ResultSet res;

    public static ResultSet getDates(String userid) {
        try {
            Connection con = database.GetConn.getConnection();
            PreparedStatement pst = con.prepareStatement("select date from userdata where userid=?");
            pst.setString(1, userid);
            res = pst.executeQuery();
            return res;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return res;
    }
}

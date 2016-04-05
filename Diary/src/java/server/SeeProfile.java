package server;

import java.sql.Connection;
import java.sql.*;

public class SeeProfile {

    static ResultSet result;

    public static ResultSet getResultSet(String userid) {
        try {
            Connection con = database.GetConn.getConnection();
            PreparedStatement pst = con.prepareStatement("select * from diary_user where userid=?");
            pst.setString(1, userid);

            result = pst.executeQuery();
            return result;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}

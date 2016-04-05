
package server;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class SaveData {
   
    
    public static boolean save(String userid,String date,String data){
        Connection con = database.GetConn.getConnection();
        try {
            boolean flag = true;
            if (flag) {
                PreparedStatement pst = con.prepareStatement("insert into userdata values(?,?,?)");
                pst.setString(1, date);
                System.out.println("Date ->"+date);
                System.out.println("Data ->"+data);
                System.out.println("UserID ->"+userid);
                pst.setString(2, data);
                pst.setString(3, userid);
                int p = pst.executeUpdate();
                if (p == 1) {
                    return true;
                } else {
                    return false;
                }
            } else {
                return false;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
      return false;
    }
}

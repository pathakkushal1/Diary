/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author mitm
 */
public class GetData {
static ResultSet res1;
    public static String getData(String userid, String date) {
        String data="";
        try {
            Connection con = database.GetConn.getConnection();
            System.out.println("User id: "+userid);
            System.out.println("Date : "+date);
            PreparedStatement pst = con.prepareStatement("select data from userdata where userid=? and date=?");
            pst.setString(1, userid);
            pst.setString(2, date);
            res1 = pst.executeQuery();
            while(res1.next()){
                System.out.println("This");
                data = res1.getString(1);
            }
            System.out.println("data : "+data);
            return data;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "Some error is still there";
    }
}

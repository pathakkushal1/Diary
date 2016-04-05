/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package server;

import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author Kushal
 */
public class ChangePass {
    public static boolean change(String ne,String ren) {
        try {
            Connection con = database.GetConn.getConnection();
            PreparedStatement pst = con.prepareStatement("update diary_user set pass=? where pass=?");
            System.out.println("Old : "+ne);
            System.out.println("New :"+ren);
            pst.setString(1, ren);
            pst.setString(2, ne);
            int p = pst.executeUpdate();
            if(p==1){
                return true;
            }
            System.out.println("Password does not change");
        } catch (Exception e) {
            e.printStackTrace();
        }  
        return false;
    }
}

package server;

import dto.MyMail;
import java.sql.*;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class InsertData {

    static MyMail mail;

    public static boolean beuser(String fname1, String lname1, String userid1, String pass1, String ques1, String ans1) {
        String fname, lname, userid, pass, ques, ans;
        fname = fname1;
        lname = lname1;
        userid = userid1;
        pass = pass1;
        ques = ques1;
        ans = ans1;
        Connection con = database.GetConn.getConnection();
        try {
            boolean flag = true;
            if (flag) {
                PreparedStatement pst = con.prepareStatement("insert into diary_user values(?,?,?,?,?,?)");
                pst.setString(1, fname);
                pst.setString(2, lname);
                pst.setString(3, userid);
                pst.setString(4, pass);
                pst.setString(5, ques);
                pst.setString(6, ans);
                int p = pst.executeUpdate();
                if (p == 1) {
                    try {

                        mail.setReceiverEmailId(userid);
                        mail.setSubject("Conformation");
                        mail.setContent("Thank You \nUserid : " + userid + "\nPassword : " + pass + "\nEnjoy Diary Writing");
                        Properties props = new Properties();
                        props.put("mail.smtp.host", "smtp.gmail.com");
                        props.put("mail.smtp.socketFactory.port", "465");
                        props.put("mail.smtp.socketFactory.class",
                                "javax.net.ssl.SSLSocketFactory");
                        props.put("mail.smtp.auth", "true");
                        props.put("mail.smtp.port", "465");

                        Session session1 = Session.getDefaultInstance(props,
                                new javax.mail.Authenticator() {
                                    protected PasswordAuthentication getPasswordAuthentication() {
                                        return new PasswordAuthentication(mail.getGmailUserName(), mail.getGmailUserPass());
                                    }
                                });
                        try {
                            Message message = new MimeMessage(session1);
                            message.setFrom(new InternetAddress(mail.getSenderEmailId()));
                            message.setRecipients(Message.RecipientType.TO,
                                    InternetAddress.parse(mail.getReceiverEmailId()));
                            message.setSubject(mail.getSubject());
                            message.setText(mail.getContent());

                            Transport.send(message);
                        } catch (MessagingException e) {
                            throw new RuntimeException(e);
                        }
                    } finally {
                        System.out.println("Error occur");
                        return true;
                    }

                } else {
                    return false;
                }
            } else {
                return false;
            }
        } catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("Sql Exception When inserting new data");
        }
        return false;
    }
}

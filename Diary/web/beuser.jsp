<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%@page import="dto.MyMail"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="server.InsertData"%>

<%
    MyMail mail1 = new MyMail();
%>
<%
    boolean flag = InsertData.beuser(request.getParameter("fname"), request.getParameter("lname"), request.getParameter("userid"), request.getParameter("pass"), request.getParameter("ques"), request.getParameter("ans"));
    if (flag) {
        session.setAttribute("msg", "You are registerd successfuly LogIn to Continue and check your mail");
         try {

                        mail1.setReceiverEmailId(request.getParameter("userid"));
                        mail1.setSubject("Conformation");
                        mail1.setContent("Thank You \nUserid : " + request.getParameter("userid") + "\nPassword : " + request.getParameter("pass") + "\nEnjoy Diary Writing");
                        Properties props = new Properties();
                        props.put("mail.smtp.host", "smtp.gmail.com");
                        props.put("mail.smtp.socketFactory.port", "465");
                        props.put("mail.smtp.socketFactory.class",
                                "javax.net.ssl.SSLSocketFactory");
                        props.put("mail.smtp.auth", "true");
                        props.put("mail.smtp.port", "465");
                        final MyMail mail = mail1;

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
                       response.sendRedirect("login.jsp");
                    }
        
    } else {
        session.setAttribute("mes", "This username already taken by any other user plz choose diffrent username");
        response.sendRedirect("registration.jsp");
    }
%>
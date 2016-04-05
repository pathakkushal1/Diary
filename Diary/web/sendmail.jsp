
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Transport"%>
<%@page import="javax.mail.internet.InternetAddress"%>
<%@page import="javax.mail.internet.MimeMessage"%>
<%@page import="javax.mail.Message"%>
<%@page import="java.net.PasswordAuthentication"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.util.Properties"%>
<%/*
    Properties props = new Properties();
    Mail mail = new Mail();
    mail.setReceiverEmailId("pathakkushal1@gmail.com");
    mail.setSubject(request.getParameter("subject"));
    mail.setContent(request.getParameter("Name")+"\t"+request.getParameter("Email")+"\t"+request.getParameter("ms"));

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


*/%>
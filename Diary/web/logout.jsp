<%-- 
    Document   : logout
    Created on : Nov 15, 2014, 9:15:29 PM
    Author     : Kushal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log Out</title>
    </head>
    <body>
        <% 
            session.invalidate();
            response.sendRedirect("login.jsp");
        %>
    </body>
</html>

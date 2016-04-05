<%-- 
    Document   : savedata
    Created on : Nov 24, 2014, 6:34:17 PM
    Author     : Kushal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    boolean flag = server.SaveData.save((String)session.getAttribute("userid"),(String) request.getParameter("date"),(String) request.getParameter("data"));
    if(flag){
        session.setAttribute("write", "Data Write Successfully");
        response.sendRedirect("write.jsp");
    }else{
         session.setAttribute("write", "This Date is Already There in DataBase");
         response.sendRedirect("write.jsp");
    }

%>



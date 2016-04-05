<%-- 
    Document   : seeold
    Created on : Nov 24, 2014, 11:20:12 PM
    Author     : Kushal
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>       
        <link rel="stylesheet" href="color.css" type="text/css" >
        <title>Home</title>
        <link rel="icon" type="image/png" href="img/logo.jpg">
    </head>
    <body >  
        <div id="center" style="width:100%;">  
            <div style="float:left; width:50%; height: 100%" id="left">
                <ol>
                    <%
                        try{
                        int i = 1;
                        ResultSet res = server.GetDates.getDates((String) session.getAttribute("userid"));

                        while (res.next()) {
                    %>
                    <li>
                        <%
                            String data = res.getString(i);
                        %> <form action="simpleS.jsp" method="POST" name="fo"><%%>
                            <input type="date" readonly="readonly" style="padding: 3px;" value="<%=data%>" name="data">
                            <input type="submit" class="bu" style="padding: 5px;" value="go">
                        </form><%
                            }

                        %>
                    </li>
                    <%
                        }catch(Exception e){
                            %><h2>Please refresh the page</h2><%
                        }
                    %>

                </ol>
            </div>
            <div  style="float:right; width:50%; height: 100%">
                <h2 style="color: salmon">Just Click the Go button To see your wrote data.</h2>
            </div>





    </body>
</html>


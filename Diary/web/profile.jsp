<%-- 
    Document   : profile
    Created on : Nov 14, 2014, 6:55:19 AM
    Author     : Kushal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="server.GiveLogIn"%>
<%@page import="java.sql.*;" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="color.css" type="text/css" >
        <title>Profile</title>
        <style>
            .td{
                color: mediumspringgreen;
                font: 5%;
                font-style: italic;
                width: 20;
            }
            #tab{
                border: greenyellow;
            }
        </style>
    </head>    
    <body >
       
        <div id="center" style="width:100%;">
            <%
                ResultSet rst = server.SeeProfile.getResultSet((String) session.getAttribute("userid"));
                ResultSetMetaData rsmt = rst.getMetaData();
                ResultSet rst2 = rst;
                System.out.println("Number of coloums = " + rsmt.getColumnCount());
               /* while (rst.next()) {
                    out.println("<table align=center border='5' cellspace='20' cellpadding='20'>");
                    for (int i = 1; i <= rsmt.getColumnCount(); i++) {
                        out.println("<tr><td class='td'>"
                                + rsmt.getColumnName(i) + "</td><td class='td'>"
                                + rst.getString(i) + "</td></tr>");
                    }
                    out.println("</table>");
                }*/
                int j=1;
                String[] data = new String[6];
                while(rst.next()){
                    for(int i = 1; i <= rsmt.getColumnCount(); i++) {
                              data[i-1] = rst.getString(i);
                              if(i==4 || i==6)
                                  data[i-1] = "***********";
                              System.out.println(data[i-1]);
                    }
                }
            %>
            <table id="tab" border="5" width="50" cellspacing="15" cellpadding="10" align="center">
          
                <tbody> 
                    <tr class="td">
                        <td class="td">Name</td>
                        <td><%=data[0]+' '+data[1]%></td>
                    </tr>
                    <tr class="td">
                        <td class="td">User Id</td>
                        <td><%=data[2]%></td>
                    </tr>
                    <tr class="td">
                        <td class="td">Password</td>
                        <td><%=data[3]%></td>
                    </tr >
                    <tr class="td">
                        <td class="td">Question</td>
                        <td><%=data[4]%></td>
                    </tr>
                    <tr class="td">
                        <td class="td">Ans</td>
                        <td><%=data[5]%></td>
                    </tr>
                </tbody>
            </table>


        </div>

    </body>
</html>

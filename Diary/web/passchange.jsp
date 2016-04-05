
<%-- 
    Document   : passchange
    Created on : May 28, 2015, 4:13:49 AM
    Author     : Kushal
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<link rel="icon" type="image/png" href="img/logo.jpg">
        <link rel="stylesheet" href="color.css" type="text/css" >
        <style>
            td{
                color: #09D4FF;
            }
            input{
                border: tomato;
              
                padding: 5px;
            }
        </style>
        <script>
             function check1() {
                var ne = document.getElementById("n").value;
                var ren = document.getElementById("ren").value;
                if (ne != ren) {
                    alert("Enter your new password Correctly");
                    return false;
                }
                return true;
            }
            
        </script>
    </head>
    <body >
        <div style="margin-left: 30%;margin-top: 100px;">
            <form action="pass.jsp" method="post" onsubmit="return check1()">
                <table   cellspacing="5" cellpadding="2">
                    <tr>
                        <td>Old Password</td>
                        <td><input type="password" style="" value="" placeholder="Old Password" name="old" size="25"></td>
                    </tr>
                    <tr>
                        <td>New Password</td>
                        <td><input type="password" value="" placeholder="New Password" name="ne" id="n" size="25"></td>
                    </tr>
                    <tr>
                        <td>Repeat New Password</td>
                        <td><input type="password" value="" placeholder="Repeat New Password" id="ren" size="25"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" class="bu" value="Submit"></td>
                        <td><input type="reset" class="bu" value="Reset"></td>
                    </tr>
                </table>
            </form>
        </div>
        <%
                    String write = (String) session.
                            getAttribute("pass");
                       if (write != null) {%>
                <p style="color: red" align="center" class="p"><%=write%></p>
                <%session.setAttribute("pass", null);
                    }
                %>
    </body>
</html>



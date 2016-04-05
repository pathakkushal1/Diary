<%-- 
    Document   : login
    Created on : Nov 3, 2014, 3:59:19 AM
    Author     : Kushal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Log In</title>
        <link rel="stylesheet" href="color.css" type="text/css" >
        <script type="text/javascript">
            function check() {
                var em = document.getElementById("userid").value;
                var pw = document.getElementById("pass").value;
                if (em == "") {
                    alert("fill email");
                    return false;
                }
                if (pw == "") {
                    alert("fill password");
                    return false;
                }
                return true;
            }
        </script>
        <link rel="icon" type="image/png" href="img/logo.jpg">
    </head>   
    <body id="has">
        <div id="top">  <h1 align="center" class="mess">
                <a class="mess" style="text-decoration: none" href="index.jsp"> Diary</a>
            </h1>
            <ul class="ul" align="center">
                <li class="li"><a class="a" href="registration.jsp">Registration</a></li> 
                <li class="li"><a class="a" href="aboutus.jsp">About Us</a></li> 
                <li class="li"><a class="a" href="contactus.jsp">Contact us</a></li> 
            </ul>           
        </div>      

        <div id="center" style="width:100%;">  
            <marquee class="mar">Log In To Write Diary</marquee>
            <h1 class="mess" align="center">
                Sign In
            </h1>
            <form action="givelogin.jsp" method="POST" onsubmit="return check()">
                <table border="0" align="center" cellspacing="5" cellpadding="5">
                    <tbody>
                        <tr>
                            <td><font face="Comic sans MS" color="Salmon">Username</font></td>                          
                            <td><input type="text" name="userid" value="" size="15" id="userid"/></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><font face="Comic sans MS" color="Salmon">Password</font></td>
                            <td><input type="password" name="pass" value="" size="15" id="pass"/></td>

                        </tr>
                        <tr>
                            <td><input type="submit" value="Login"class="bu" align="center"/></td>  
                            <td><input type="reset" value="Reset" class="bu" align="center"/></td>  
                        </tr>
                    </tbody>
                </table>
            </form>

            <%
                String msg = (String) session.
                        getAttribute("msg");
                if (msg != null) {%>
                <p style="color: red" align="center" class="p"><%=msg%></p>
            <%session.setAttribute("msg", null);
                }
            %>
            <p align="center">
                <a class="a" href="registration.jsp" >New user Then Register your self first</a></p>
        </div>
        <div id="bottom">
            <ul class="ulb" align="center">
                <li class="li"><a class="ab" href="registration.jsp">Registration</a></li> 
                <li class="li"><a class="ab" href="aboutus.jsp">About Us</a></li> 
                <li class="li"><a class="ab" href="contactus.jsp">Contact us</a></li>
            </ul> 
        </div>
    </body>
</html>

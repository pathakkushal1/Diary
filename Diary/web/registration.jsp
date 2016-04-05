<%-- 
    Document   : registration
    Created on : Nov 3, 2014, 4:10:11 AM
    Author     : Kushal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>       
        <link rel="stylesheet" href="color.css" type="text/css" >
        <title>Registration</title>
        <link rel="icon" type="image/png" href="img/logo.jpg">
        
    </head>
    <body id="has">
        <div id="top">  <h1 align="center" class="mess">
                <a class="mess" style="text-decoration: none" href="index.jsp"> Diary</a>
            </h1>
            <ul class="ul" align="center">
                <li class="li"><a class="a" href="login.jsp">Login</a></li>  
                <li class="li"><a class="a" href="aboutus.jsp">About Us</a></li> 
                <li class="li"><a class="a" href="contactus.jsp">Contact us</a></li> 
            </ul>           
        </div>      

        <div id="center" style="width:100%;">  

            <marquee direction="right" class="mar" ng-s>Sign Up And Write Diary</marquee>
            <h1 class="mess" align="center">
                Sign Up
            </h1>
            <form action="beuser.jsp" method="POST" >
                <table border="0" cellspacing="5" cellpadding="2"  align="center">
                    <tbody>
                        <tr>
                            <td>
                                <font face="Comic sans MS" color="Salmon">First Name</font></td>
                            <td><input type="text" name="fname" value="" required=""/></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><font face="Comic sans MS" color="Salmon">Last Name</font></td>
                            <td><input type="text" name="lname" value="" required=""/></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><font face="Comic sans MS" color="Salmon">User ID</font></td>
                            <td><input type="email" name="userid" value="" required=""/></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><font face="Comic sans MS" color="Salmon">Password</font></td>
                            <td><input type="password" name="pass" value="" required=""/></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><font face="Comic sans MS" color="Salmon">Conform Password</font></td>
                            <td><input type="password" name="repassword" value="" /></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><font face="Comic sans MS" color="Salmon">Security Question</font></td>
                            <td><input type="text" name="ques" value="" required=""/></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><font face="Comic sans MS" color="Salmon">Ans</font></td>
                            <td><input type="password" name="ans" value="" required=""/></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Submit" class="bu"/></td>
                            <td><input type="reset" value="Reset" class="bu"/></td>
                            <td></td>
                        </tr>
                    </tbody>
                </table>
            </form>
            <%
                String msg = (String) session.
                        getAttribute("mes");
                if (msg != null) {%>
            <p style="color: red" align="center" class="p"><%=msg%></p>
            <%session.setAttribute("mes", null);
                }
            %>
            <br/>
            <p align="center"> <a class="a" href="login.jsp">Already a Member Then LogIn</a></p>
        </div>
        <div id="bottom">
           <ul class="ulb" align="center">
               <li class="li"><a class="ab" href="login.jsp">Login</a></li> 
                <li class="li"><a class="ab" href="aboutus.jsp">About Us</a></li> 
                <li class="li"><a class="ab" href="contactus.jsp">Contact us</a></li>
            </ul> 
        </div>
    </body>
</html>

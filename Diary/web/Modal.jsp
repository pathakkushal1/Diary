<%-- 
    Document   : Modal
    Created on : Nov 1, 2014, 2:56:24 PM
    Author     : Kushal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="color.css" type="text/css" >
    </head>
    <body id="has">
        <div id="top">  <h1 align="center" class="mess">
                Messenger
            </h1>
            <ul class="ul" align="center">
                <li class="li"><a class="a" href="login.jsp">Login</a></li> 
                <li class="li"><a class="a" href="registration.jsp">Registration</a></li> 
                <li class="li"><a class="a" href="aboutus.jsp">About Us</a></li> 
                <li class="li"><a class="a" href="contactus.jsp">Contact us</a></li> 
            </ul>           
        </div>      

        <div id="center" style="width:100%;">  
            <div style="float:left; width:50%;" id="left">
                <marquee direction="right" class="mar" behavior="slide">Welcome T</marquee>
                <h1 class="mess">
                    Sign Up
                </h1>
                <form action="beuser.jsp" method="POST" >
                    <table border="0" cellspacing="5" cellpadding="2" id="registration" >
                        <tbody>
                            <tr>
                                <td>
                                    <font face="Comic sans MS" color="FireBrick">First Name</font></td>
                                <td><input type="text" name="fname" value="" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><font face="Comic sans MS" color="FireBrick">Last Name</font></td>
                                <td><input type="text" name="lname" value="" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><font face="Comic sans MS" color="FireBrick">User ID</font></td>
                                <td><input type="text" name="userid" value="" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><font face="Comic sans MS" color="FireBrick">Password</font></td>
                                <td><input type="password" name="pass" value="" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><font face="Comic sans MS" color="FireBrick">Conform Password</font></td>
                                <td><input type="password" name="repass" value="" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><font face="Comic sans MS" color="FireBrick">Security Question</font></td>
                                <td><input type="text" name="ques" value="" /></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><font face="Comic sans MS" color="FireBrick">Ans</font></td>
                                <td><input type="password" name="ans" value="" /></td>
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

            </div>
            <div style="float:right; width:50%;" id="right">
                <marquee class="mar" behavior="slide">o Messenger</marquee>
                <h1 class="mess" class="h">
                    Sign In
                </h1>
                <form action="givelogin.jsp" method="POST">
                    <table border="0" id="login" cellspacing="5" cellpadding="2">
                        <tbody>
                            <tr>
                                <td><font face="Comic sans MS" color="Salmon">Username</font></td>
                                <td><font face="Comic sans MS" color="Salmon">Password</font></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><input type="text" name="username" value="" size="10" /></td>
                                <td><input type="password" name="password" value="" size="10" /></td>
                                <td><input type="submit" value="Login" name="login" class="bu"/></td>
                            </tr>
                        </tbody>
                    </table>
                </form>
            </div>
        </div>
        <div id="bottom">
            <ul class="ulb" align="center">
                <li class="lib"><a class="ab" href="login.jsp">Login</a></li> 
                <li class="lib"><a class="ab" href="registration.jsp">Registration</a></li> 
                <li class="lib"><a class="ab" href="aboutus.jsp">About Us</a></li> 
                <li class="lib"><a class="ab" href="contactus.jsp">Contact us</a></li> 
            </ul> 
        </div>
    </body>
</html>


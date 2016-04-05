<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Welcome</title> 
        <link rel="stylesheet" href="color.css" type="text/css" >
        <link rel="icon" type="image/png" href="img/logo.jpg">
    </head>
    <body id="has">
        <div id="top">  
            <h1 align="center" class="mess">
                <a class="mess" style="text-decoration: none" href="index.jsp"> Diary</a>
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
                                <td><input type="password" name="repass" value="" required=""/></td>
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

            </div>
            <div style="float:right; width:50%;" id="right">
                <marquee class="mar" behavior="slide">o Dairy</marquee>
                <h1 class="mess" style="margin-left: 50%" class="h">
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
                                <td><input type="text" name="userid" value="" size="10" /></td>
                                <td><input type="password" name="pass" value="" size="10" /></td>
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

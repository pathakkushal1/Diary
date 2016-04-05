<%-- 
    Document   : contactus
    Created on : Nov 3, 2014, 4:28:37 AM
    Author     : Kushal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head> 
        <link rel="stylesheet" href="color.css" type="text/css" >
        <title>Contact Us</title>
    </head><body id="has">
        <div id="top">
            <h1 align="center" class="mess">
                <a class="mess" style="text-decoration: none" href="index.jsp"> Diary</a>
            </h1>
            <ul class="ul" align="center">
                <li class="li"><a class="a" href="login.jsp">Login</a></li> 
                <li class="li"><a class="a" href="registration.jsp">Registration</a></li> 
                <li class="li"><a class="a" href="aboutus.jsp">About Us</a></li> 
            </ul>           
        </div>      

        <div id="center" style="width:100%;">  
            <marquee class="mar" onmouseover="this.stop();" onmouseout="this.start();">Email Id- pathakkushal1@gmail.com</marquee>
            <iframe name="ifa" style="margin-left: 50px; width:100%; height: 600px; border:none;" src="contact.jsp" id="ifa"></iframe>
        </div>
  
    </body>
</html>

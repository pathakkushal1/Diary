<%-- 
    Document   : about
    Created on : Mar 9, 2015, 1:02:38 PM
    Author     : Kushal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

 <head>
         <link rel="stylesheet" href="color.css" type="text/css" >
        <style>
            div.ph {
                background-repeat: no-repeat;
                background-position: 50%;
                border-radius: 50%;
                width: 300px;
                height: 200px;
            }
            font.fm{
                margin-left: 45px;
                margin-bottom: 15px;
            }
            .bu2{
                margin-left: 65px;
                margin-top: 15px;
                background-color: transparent;
                color:royalblue;
                text-decoration:none;
                text-shadow: 1px 1px #000;
                text-transform:uppercase;
                font-family: fantasy;
                font-size: 100%;
                font-style: italic;
                width: 10em;  height: 2em;
            }
            .bu2:hover{
                background-color: crimson;
            }
        </style>
    </head>
    <body>
            <div id="top">  <h1 align="center" class="mess">
                Dairy
            </h1>
            <ul class="ul" align="center"> 
                <li class="li"><a class="a" href="login.jsp">Login</a></li> 
                <li class="li"><a class="a" href="registration.jsp">Registration</a></li> 
                <li class="li"><a class="a" href="contactus.jsp">Contact us</a></li>
            </ul>           
        </div>      

        <div id="center" style="width:100%;">  
            <marquee class="mar">We Are The Developers</marquee>
            
        </div>
        <div id="bottom">
            <ul class="ulb" align="center"> 
                <li class="li"><a class="ab" href="login.jsp">Login</a></li> 
                <li class="li"><a class="ab" href="registration.jsp">Registration</a></li> 
                <li class="li"><a class="ab" href="contactus.jsp">Contact us</a></li>
            </ul> 
        </div>
        <div class="main" style="width: 100%;">
            <h2 class="well" >About Us</h2>
            <div class="kushal" style="width: 50%; float: left;height: 100%">
                <div style="background-image: url(img/im1.png)" class="ph">

                </div><font face="Comic sans MS"class="fm" color="red">Name    -</font>
                <font face="Comic sans MS"class="fm" color="red">Kushal Pathak</font><br>
                <font face="Comic sans MS"class="fm" color="red">Field      -</font>
                <font face="Comic sans MS"class="fm" color="red">BE - IT</font><br>
                <font face="Comic sans MS"class="fm" color="red">Collage  -</font>
                <font face="Comic sans MS"class="fm" color="red">MITM</font><br>
                <input type="submit" value="Send Mail" class="bu2" align="center" />
            </div>
        </div>
    </body>
</html>

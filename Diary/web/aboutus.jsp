<%-- 
    Document   : aboutus
    Created on : Nov 3, 2014, 4:28:26 AM
    Author     : Kushal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="color.css" type="text/css" >
        <title>About Us</title>
        <script>
            function call(){
                window.location="http://writediary.cfapps.io/contactus.jsp";
            }
        </script>
         <style>
             #center{
                 float: top;
                 margin-left: 40%;
             }
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
                background: tomato;
                border: tomato;
                text-decoration : none;
                text-transform:uppercase;
                font-family: fantasy;
                font-size: 100%;
                font-style: italic;
                width: 10em;  height: 2em;
            }
            .bu2:hover{
                background-color: yellow;
            }
        </style>
        <link rel="icon" type="image/png" href="img/logo.jpg">
    </head>
    <body id="has">
        <div id="top"> <h1 align="center" class="mess">
                <a class="mess" style="text-decoration: none" href="index.jsp"> Diary</a>
            </h1>
            <ul class="ul" align="center"> 
                <li class="li"><a class="a" href="login.jsp">Login</a></li> 
                <li class="li"><a class="a" href="registration.jsp">Registration</a></li> 
                <li class="li"><a class="a" href="contactus.jsp">Contact us</a></li>
            </ul>           
        </div>      

        <div id="center" style="width:100%;">  

            <div class="main" style="width: 100%;">
             
                
                <div class="kushal" style="width: 50%; float: left;height: 100%">
                    <div style="background-image: url(img/im1.png)" class="ph">

                    </div><font face="Comic sans MS"class="fm" color="red">Name    -</font>
                    <font face="Comic sans MS"class="fm" color="red">Kushal Pathak</font><br>
                    <font face="Comic sans MS"class="fm" color="red">Field         -</font>
                    <font face="Comic sans MS"class="fm" color="red">BE - IT</font><br>
                    <font face="Comic sans MS"class="fm" color="red">College  -</font>
                    <font face="Comic sans MS"class="fm" color="red">MITM</font><br>
                    <input type="button" onclick="call()" value="Send Mail" class="bu2" align="center" />
                </div>
            </div>
        </div>
        <div id="bottom">
            <ul class="ulb" align="center"> 
                <li class="li"><a class="ab" href="login.jsp">Login</a></li> 
                <li class="li"><a class="ab" href="registration.jsp">Registration</a></li> 
                <li class="li"><a class="ab" href="contactus.jsp">Contact us</a></li>
            </ul> 
        </div>

    </body>
</html>

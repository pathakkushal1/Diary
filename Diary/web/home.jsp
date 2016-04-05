<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>       
        <link rel="stylesheet" href="color.css" type="text/css" >
        <link rel="icon" type="image/png" href="img/logo.jpg">
        <title>Home</title>
    </head>
    <body id="write">
        <div id="top">  
            <h1 style="margin-right: 3%" align="center" class="mess">
                <a class="mess" style="text-decoration: none" href="home.jsp"> Diary</a>
            </h1>
            <ul class="ul" align="center" style="margin-right: 3%">
                <nav align="center" style="margin-left: 5%">
                    <ul class="sf-menu" id="nav">

                        <li class="li"><a class="a" target="ifa" href="write.jsp">Write New</a></li>

                        <li class="li"><a class="a" target="ifa" href="seeold.jsp">See Old</a></li>
                        <li class="li"><a class="a">Setting</a>
                            <ul>    
                                <li class="li"><a class="a" target="ifa" href="passchange.jsp">Password</a></li> 
                                <li class="li"><a class="a"  href="logout.jsp">Log Out</a></li>
                                <li class="li"><a class="a" target="ifa" href="contact.jsp">Contact Us</a></li>  
                            </ul>
                        </li>
                    </ul>
                </nav>

            </ul>      

        </div>  
        <div id="center" style="width:100%;">  
            <iframe name="ifa" style="width:100%; height: 700px; border:none;" src="write.jsp" id="ifa"></iframe>
        </div>
    </body>
</html>

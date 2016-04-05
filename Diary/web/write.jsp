<%-- 
    Document   : write
    Created on : Nov 14, 2014, 4:12:35 AM
    Author     : Kushal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <link rel="stylesheet" href="color.css" type="text/css" >
        <title>Write New</title>
        <link rel="icon" type="image/png" href="img/logo.jpg">
        <script type="text/javascript">
            function dat() {
                var area = document.getElementById("area").value;
                var date = document.getElementById("date").value;
                if (area === "") {
                    alert("fill Data");
                    return false;
                }
                if (date === "") {
                    alert("fill Date");
                    return false;
                }
                return true;
            }
        </script>
    </head>
    <body>
       
        <div id="center" style="width:100%;"> 



            <form action="savedata.jsp" method="get" align="center" onsubmit="return dat()"> 
                <h2><font face="Comic sans MS" color="brown">Write Your Story</font></h2>

                <h2 ><font face="Comic sans MS" color="brown" >
                    <input type="date" name="date" value="" id="date"/>
                    </font></h2>
                
                <textarea name="data" rows="30" cols="100" id="area">
                </textarea>
                <%
                    String write = (String) session.
                            getAttribute("write");
                       if (write != null) {%>
                <p style="color: red" align="center" class="p"><%=write%></p>
                <%session.setAttribute("write", null);
                    }
                %>
                <table border="0" cellspacing="20" align="center">
                    <tbody>
                        <tr>
                            <td><input type="submit" value="Submit" class="bu" align="center"/></td>
                            <td><input type="reset" value="Reset" class="bu" align="center"/></td>
                        </tr>
                    </tbody>
                </table>
            </form>

        </div>
    </body>
</html>

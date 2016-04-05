<%@page import="server.GetData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        <link href="color.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="img/logo.jpg">
        <script>
            function call(){
                 window.history.back();
            }
            
        </script>
    </head>
    <body>
        <%
            String da1, da2;
            da1 = (String) session.getAttribute("userid");
            da2 = (String) request.getParameter("data");
            String data = GetData.getData(da1, da2);
            System.out.println("Data in simple S calss" + data);
        %>
        <div align="center">
            <h2><font face="Comic sans MS" color="brown">Your Story</font></h2>

            <h2 ><font face="Comic sans MS" color="brown" >
                <input type="date"readonly="readonly" name="date" value="<%=da2%>" id="date"/>
                </font></h2>

            <textarea name="data" readonly="readonly" rows="30" cols="100" id="area">
                <%
                    if (!data.equals("")) {
                %>

                <%=data%>
                <%
                    }
                %>
            </textarea>
            <br/><br/>
            <input type="button" onclick="call()" class="bu" value="Back">

    </body>
</html>
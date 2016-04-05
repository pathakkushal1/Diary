
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="server.GiveLogIn"%>
<%  
    boolean flag = GiveLogIn.getuserdata(request.getParameter("userid"), request.getParameter("pass"));
    if(flag){
        session.setAttribute("userid",request.getParameter("userid") );
        
        response.sendRedirect("home.jsp");
     //   session.setAttribute("msg", "Login Successfully");
       // response.sendRedirect("login.jsp");
    }else{
        session.setAttribute("msg", "Invaild User Id Or Password");
        response.sendRedirect("login.jsp");
    }
%>
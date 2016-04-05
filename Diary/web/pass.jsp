
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String old, ne;
    old = request.getParameter("old");
    ne = request.getParameter("ne");
    System.out.println("!   Old : "+ne);
    System.out.println("!   New :"+ne);
    boolean flag = server.ChangePass.change(old, ne);
    if (flag) {
        session.setAttribute("pass", "Password Change Successfully");
        response.sendRedirect("passchange.jsp");
    }else{
        session.setAttribute("pass", "Old Password doesnot match");
        response.sendRedirect("passchange.jsp");
    }

%>
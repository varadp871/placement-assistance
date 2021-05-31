<%-- 
    Document   : announcements0
    Created on : May 29, 2021, 10:39:43 PM
    Author     : my pc
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Announcements</title>
    </head>
    <body>
        
        <%
            
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1

            response.setHeader("Pragma", "no-cache");//HTTP 1.0
            
            response.setHeader("Expires", "0"); //Proxies

            if(session.getAttribute("GRNo") == null){
                response.sendRedirect("stu.jsp");
            }
        %>
        <button><a href="">Register now!</a></button>
        <form action="LogoutStu">
             <button type="submit">Logout</button>
        </form>
       
    </body>
</html>
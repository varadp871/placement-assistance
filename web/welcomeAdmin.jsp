<%-- 
    Document   : welcomeAdmin
    Created on : May 29, 2021, 5:05:54 PM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome Admin - ${username}</title>
    </head>
    <body>
        <%
            
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            
            
            if(session.getAttribute("username") == null){
                response.sendRedirect("ad.jsp");
            }
            
         %>
            
            
            
        <h1>Hello ${username} !</h1>
        <form action="LogoutAdmin">
            <button type="submit">Logout</button>
        </form>
    </body>
</html>

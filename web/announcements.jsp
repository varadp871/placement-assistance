<%-- 
    Document   : announcements.jsp
    Created on : 16 May, 2021, 4:10:38 PM
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
        
        if(session.getAttribute("registered") == null){
            response.sendRedirect("announcements0.jsp");
        }
        
        %>
        
        <h1>Hello, ${GRNo}!</h1>
        
        <form action="stuProfile.jsp">
            <button type="submit">Update Profile</a></button>
        </form>
        
        <form action="LogoutStu">
             <button type="submit">Logout</button>
        </form>
       
    </body>
</html>

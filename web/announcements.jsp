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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <title>Announcements</title>
    </head>
    <body>

        <%

            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1

            response.setHeader("Pragma", "no-cache");//HTTP 1.0

            response.setHeader("Expires", "0"); //Proxies

            if (session.getAttribute("GRNo") == null) {
                response.sendRedirect("stu.jsp");
            }

            if (session.getAttribute("registered") == null) {
                response.sendRedirect("announcements0.jsp");

            }

        %>

        <h1>Hello, ${GRNo}!</h1>
        <form action="stuProfile.jsp">
            <button type="submit" class="btn btn-outline-warning">Register</a></button>
        </form>
        <form action="stuProfile.jsp">
            <button type="submit" class="btn btn-outline-warning">Update Profile</a></button>
        </form>
        <form action="TrackCompanies.jsp">
            <button type="submit" class="btn btn-outline-primary">View Active Companies</button>
        </form>
        <form action="LogoutStu">
            <button type="submit" class="btn btn-danger">Logout</button>
        </form>

    </body>
</html>

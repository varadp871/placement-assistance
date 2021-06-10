<%-- 
    Document   : welcomeAdmin
    Created on : May 29, 2021, 5:05:54 PM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page
    import="java.io.IOException;"
    import ="java.io.PrintWriter;"
    import ="javax.servlet.ServletException;"
    import ="javax.servlet.annotation.WebServlet;"
    import ="javax.servlet.http.HttpServlet;"
    import ="javax.servlet.http.HttpServletRequest;"
    import ="javax.servlet.http.HttpServletResponse;"
    import ="java.sql.*;"
    import ="javax.servlet.http.HttpSession;"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

            <title>Welcome Admin - ${username}</title>
        </head>
        <body>
            <%

                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

                if (session.getAttribute("username") == null) {
                    response.sendRedirect("ad.jsp");
                }
            %>



            <h1 class="text-muted ms-4 mt-4 fst-italic">Hello ${username} !</h1>
         

            <form action="AddCompanySubmit.jsp">
                <button type="submit" class="btn btn-primary">Add new Company</button>
            </form>
            <form action="ActiveCompanies.jsp">
                <button type="submit" class="btn btn-primary">View Active Companies</button>
            </form>
            <form action="RemoveCompanyLanding.jsp">
                <button type="submit" class="btn btn-outline-warning">Remove Active Companies</button>
            </form>

            <form action="LogoutAdmin">
                <button type="submit" class="btn btn-danger">Logout</button>
            </form>
        </body>
        <script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.7/lib/darkmode-js.min.js"></script>
<script>
  function addDarkmodeWidget() {
    new Darkmode().showWidget();
  }
  window.addEventListener('load', addDarkmodeWidget);
</script>
    </html>

<%-- 
    Document   : ActiveCompanies
    Created on : Jun 6, 2021, 8:30:14 PM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Active Companies</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        </head>
        <body>
            <%

                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

                if (session.getAttribute("username") == null) {
                    response.sendRedirect("ad.jsp");
                }
            %>
            <h1>Active Companies</h1>
            <%
                Connection conn;
                Statement stmt;
                ResultSet rs;
                String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/";
                String dbname = "placement-assistance";
                String userName = "root";
                String Password = "";

            %>


            <%            try {
                    Class.forName(driver).newInstance();
                    conn = DriverManager.getConnection(url + dbname, userName, Password);
                    String Query = "Select company_name, offered_ctc, required_cgpa from active_companies";
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery(Query);
                    while (rs.next()) {

                        String company_name = rs.getString("company_name");


            %>
            <div class="card" style="width: 18rem;">
                <div class="card-body">
                    <h5 class="card-title"><%=rs.getString("company_name")%></h5>
                    <p class="card-text">Offered CTC : <%=rs.getString("offered_ctc")%></p>
                    <p class="card-text">Required CGPA : <%=rs.getString("required_cgpa")%></p>
                    <a href="ViewAppliedCompanies.jsp?company=<%=rs.getString("company_name")%>" class="btn btn-primary" >View Applications</a>
                </div>
            </div>
            <%                              }

                } catch (Exception ex) {
                    out.println("Exception : " + ex.getMessage());
                    ex.printStackTrace();

                }
            %>
            <form action="LogoutAdmin">
                <button type="submit" class="btn btn-danger">Logout</button>
            </form>
        </body>
    </html>

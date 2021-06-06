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



            <h1>Hello ${username} !</h1>

            <h2>Students List with details</h2>
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

            <table class="table">
                <thead>
                    <tr>
                        <th scope="col">Gr. No</th>
                        <th scope="col">Email</th>
                        <th scope="col">Full Name</th>
                        <th scope="col">Date of Birth</th>
                        <th scope="col">MB Number</th>
                        <th scope="col">Personal Email</th>
                        <th scope="col">Qualification</th>
                        <th scope="col">Passing year</th>
                        <th scope="col">10%</th>
                        <th scope="col">12%</th>
                        <th scope="col">College Name</th>
                        <th scope="col">CGPA</th>
                        <th scope="col">%</th>
                    </tr>
                </thead>
                <tbody>

                    <%            try {
                            Class.forName(driver).newInstance();
                            conn = DriverManager.getConnection(url + dbname, userName, Password);
                            String Query = "Select * from student_register";
                            stmt = conn.createStatement();
                            rs = stmt.executeQuery(Query);
                            while (rs.next()) {
                    %>
                    <tr>
                        <th scope="row"><%=rs.getInt("grno")%></th>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("full_name")%></td>
                        <td><%=rs.getString("dob")%></td>
                        <td><%=rs.getString("mb_number")%></td>
                        <td><%=rs.getString("personal_email")%></td>
                        <td><%=rs.getString("qualification")%></td>
                        <td><%=rs.getInt("passing_year")%></td>
                        <td><%=rs.getFloat("10th_per")%></td>
                        <td><%=rs.getFloat("12th_per")%></td>
                        <td><%=rs.getString("college_name")%></td>
                        <td><%=rs.getFloat("graduation_cgpa")%></td>
                        <td><%=rs.getFloat("graduation_per")%></td>
                    </tr>
                    <%
                            }

                        } catch (Exception ex) {
                            out.println("Exception : " + ex.getMessage());
                            ex.printStackTrace();
                        }
                    %>

                </tbody>
            </table>

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
    </html>

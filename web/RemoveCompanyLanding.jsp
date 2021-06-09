<%-- 
    Document   : RemoveCompany
    Created on : Jun 6, 2021, 4:20:54 PM
    Author     : my pc
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:mysql://localhost:3306/";
    String database = "placement-assistance";
    String userid = "root";
    String password = "";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet rs = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

    </head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            if (session.getAttribute("username") == null) {
                response.sendRedirect("ad.jsp");
            }


        %>

        <table class="table">
            <thead>
                <tr>
                    <th scope="col">Company Name</th>
                    <th scope="col">Offered_CTC</th>
                    <th scope="col">CGPA</th>
                    <th scope="col">Description</th>
                    <th scope="col">Status</th>
                </tr>

            </thead>
            <tbody>
                <%                    try {
                        connection = DriverManager.getConnection(connectionUrl + database, userid, password);
                        statement = connection.createStatement();
                        String sql = "SELECT * FROM active_companies";
                        rs = statement.executeQuery(sql);
                        int i = 0;
                        while (rs.next()) {

                            String company_name = rs.getString("company_name");
                            pageContext.setAttribute("company_name", company_name);
                %>

                <tr>
                    <th scope="row"><%=rs.getString("company_name")%></th>
                    <td><%=rs.getString("offered_ctc")%></td>
                    <td><%=rs.getString("required_cgpa")%></td>
                    <td><%=rs.getString("description")%></td>
                    <td><a href="RemoveCompanyFinal.jsp?company=<%=rs.getString("company_name")%>"><button type="button" class="btn btn-outline-warning" data-bs-toggle="modal" data-bs-target="#DeleteCompanyModal">Delete</button></a></td>
                </tr>


                <%
                            i++;
                        }
                        connection.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                %>
            </tbody>
        </table>

        <div class="modal fade" id="DeleteCompanyModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="staticBackdropLabel">SUCCESS!</h5>
                    </div>
                    <div class="modal-body">
                        Deleted ${company_name} Successfully!
                    </div>
                </div>
            </div>
        </div>

        <form action="LogoutAdmin">
            <button type="submit" class="btn btn-danger">Logout</button>
        </form>
    </body>
</html>
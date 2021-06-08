<%-- 
    Document   : ViewAppliedCompanies
    Created on : Jun 6, 2021, 10:24:25 PM
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
    import ="java.sql.ResultSet;"
    import ="javax.servlet.http.HttpSession;"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>View Applied Companies</title>            
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        </head>
        <body>
            <%

                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

                if (session.getAttribute("username") == null) {
                    response.sendRedirect("ad.jsp");
                }
                String company_name = request.getParameter("company");
                pageContext.setAttribute("company_name", company_name);
            %>
            <h1>Students applied for ${company_name}</h1>

             <table class="table">
                <thead>
                    <tr>
                        <th scope="col">GR NO.</th>
                        <th scope="col">Full Name</th>
                        <th scope="col">Graduation CGPA</th>
                        <th scope="col">Mobile Number</th>
                    </tr>
                </thead>
                <tbody>
            <%
                ResultSet rs;

                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement-assistance", "root", "");
                    Statement st = conn.createStatement();
                    rs = st.executeQuery("SELECT grno, full_name, graduation_cgpa, mb_number FROM student_register WHERE " + company_name + "=1 AND graduation_cgpa >= (SELECT required_cgpa FROM active_companies WHERE company_name = '"+company_name+"')");
                    while (rs.next()) {
            %>
           
                    <tr>
                        <th scope="row"><%=rs.getString("grno")%></th>
                        <td><%=rs.getString("full_name")%></td>
                        <td><%=rs.getString("graduation_cgpa")%></td>
                        <td><%=rs.getString("mb_number")%></td>
                    </tr>
                    
                
            <%
                    }

                } catch (Exception e) {
                    System.out.print(e);
                    e.printStackTrace();
                }
            %>
</tbody>
      </table>

            <form action="LogoutAdmin">
                <button type="submit" class="btn btn-danger">Logout</button>
            </form>
        </body>
    </html>

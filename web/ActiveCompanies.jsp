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
            <h1 class="text-muted fst-italic ms-4 pt-4 text-center">Active Companies</h1>
            
            
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
            <!--<div class="mt-5">-->
            <div class= "container shadow p-3 mb-5 bg-body rounded position-absolute top-0 start-50 translate-middle-x border-5 border-top" id="mainContainer" style="margin-top: 135px">
 <div class="container nav justify-content-end mt-2">
     <div class="nav-item">
                             <a class="btn btn-primary" href="welcomeAdmin.jsp">&larr; Back</a>

     </div>
     &nbsp;
     &nbsp;
     <div class="nav-item">
          <form action="LogoutAdmin">
                    <button type="submit" class="btn btn-danger">Logout</button>
                    </form>
     </div>
                   
                </div>
                <div class="container d-flex flex-wrap ms-4">
                    <%            try {
                            Class.forName(driver).newInstance();
                            conn = DriverManager.getConnection(url + dbname, userName, Password);
                            String Query = "Select company_name, offered_ctc, required_cgpa from active_companies";
                            stmt = conn.createStatement();
                            rs = stmt.executeQuery(Query);
                            while (rs.next()) {

                                String company_name = rs.getString("company_name");


                    %>
                    <div class="card mx-2 my-2" style="width: 18rem;">
                        <div class="card-body">
                            <h5 class="card-title fst-italic fw-bold text-dark text-decoration-underline"><%=rs.getString("company_name")%></h5>
                            <p class="card-text">Offered CTC : <%=rs.getString("offered_ctc")%></p>
                            <p class="card-text">Required CGPA : <%=rs.getString("required_cgpa")%></p>
                            <a href="ViewAppliedCompanies.jsp?company=<%=rs.getString("company_name")%>" class="btn btn-success" >View Applications</a>
                        </div>
                    </div>
                    <%                              }

                        } catch (Exception ex) {
                            out.println("Exception : " + ex.getMessage());
                            ex.printStackTrace();

                        }
                    %>
                </div>
               
                
            </div>

            <!--</div>-->

        </body>
        <script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.7/lib/darkmode-js.min.js"></script>
<script>
  function addDarkmodeWidget() {
    new Darkmode().showWidget();
  }
  window.addEventListener('load', ()=>{
      addDarkmodeWidget();
      document.getElementById("mainContainer").style.color = "#808080";
        
  });

</script>
    </html>

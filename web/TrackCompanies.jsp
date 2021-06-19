<%-- 
    Document   : TrackCompanies
    Created on : May 31, 2021, 3:09:06 PM
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
    <%--
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Track Companies</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        </head>
        <body>
            <%

                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1

                response.setHeader("Pragma", "no-cache");//HTTP 1.0

                response.setHeader("Expires", "0"); //Proxies

                if (session.getAttribute("GRNo") == null) {
                    response.sendRedirect("stu.jsp");
                }


            %>

           




            <%            Connection conn;
                Statement stmt;
                ResultSet rs;
                String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/";
                String dbname = "placement-assistance";
                String userName = "root";
                String Password = "";
            
                
            %>
             <h1 class="text-muted fst-italic ms-4 pt-4">Hello, ${GRNo}!</h1>
            
            <div class="container">
                <div class="container">
                    <div class="nav justify-content-between">
                        <div class="nav-item"></div>
                        <h2 class="text-muted fw-bold nav-item mb-5">Apply for a Company</h2>
<!--                        <div class="nav justify-content-end"> -->

                        <form action="LogoutStu" class="nav-item">
                            <button type="submit" class="btn btn-danger">Logout</button>
                        </form>
                    <!--</div>-->
                    </div>
                    
                    
                </div>


                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">Company Name</th>
                            <th scope="col">Offered_ctc</th>
                            <th scope="col">Required CGPA</th>
                            <th scope="col">Description</th>
                            <!--<th scope="col">Branches</th>-->
                            <th scope="col">Application Status</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%            try {
                                Class.forName(driver).newInstance();
                                String branches = "";
                                conn = DriverManager.getConnection(url + dbname, userName, Password);
                                String gr_no = session.getAttribute("GRNo").toString();
                                stmt = conn.createStatement();
                                String sql = "Select qualification from student_register where grno =" + gr_no;
                                ResultSet branch = stmt.executeQuery(sql);
                                while (branch.next()) {
                                    branches = branch.getString("qualification");
                                }
                                String Query = "Select * from active_companies where " + branches + " = 1";

                                stmt = conn.createStatement();
                                rs = stmt.executeQuery(Query);
                                while (rs.next()) {
                                    
                                    String company_name = rs.getString("company_name");
                                    pageContext.setAttribute("company_name", company_name);
                                    Statement st = conn.createStatement();
                                    ResultSet rs2 = st.executeQuery("SELECT "+company_name+"  FROM student_register WHERE "+company_name+" =0 AND grno="+gr_no);
                                    while(rs2.next()){
                                        
                                    

                        %>
                        <tr>
                            <th scope="row"><%=rs.getString("company_name")%></th>
                            <td><%=rs.getString("offered_ctc")%></td>
                            <td><%=rs.getString("required_cgpa")%></td>
                            <td><%=rs.getString("description")%></td>

                            <!--<td>></td>-->

                            <td><a href="ApplyCompany.jsp?company=<%=rs.getString("company_name")%>">
                                    <button class="btn btn-outline-info" style="width: 150px; line-height: 1.0;" name="applyButton">Apply</button>

                                </a>
                            </td>

                        </tr>
                        <%
                            }
} 

                            } catch (Exception ex) {
                                out.println("Exception : " + ex.getMessage());
                                ex.printStackTrace();

                            }
                        %>

                    </tbody>
                </table>




            </div>

        </body>

<script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.7/lib/darkmode-js.min.js"></script>
<script>
  function addDarkmodeWidget() {
    new Darkmode().showWidget();
  }
  window.addEventListener('load', addDarkmodeWidget);
</script>
    </html>

    --%>
    
    <%-- 
    Document   : CompaniesAppliedStudent
    Created on : Jun 17, 2021, 7:05:43 PM
    Author     : my pc
--%>


    <!DOCTYPE html>
    <html>
        <head>

            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Companies Applied - ${GRNo}</title>
        </head>
        <body>
            <%

                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1

                response.setHeader("Pragma", "no-cache");//HTTP 1.0

                response.setHeader("Expires", "0"); //Proxies

                if (session.getAttribute("GRNo") == null) {
                    response.sendRedirect("stu.jsp");
                }


            %>




            <!DOCTYPE html>
        <html lang="en">
            <head>
                <!-- basic -->
                <meta charset="utf-8">
                <meta http-equiv="X-UA-Compatible" content="IE=edge">
                <!-- mobile metas -->
                <meta name="viewport" content="width=device-width, initial-scale=1">
                <meta name="viewport" content="initial-scale=1, maximum-scale=1">
                <!-- site metas -->
                <title>Apply for a Company</title>
                <meta name="keywords" content="">
                <meta name="description" content="">
                <meta name="author" content="">
                <!-- bootstrap css -->
                <!--      <link rel="stylesheet" href="css/bootstrap.min.css">-->
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

                <!-- style css -->
                <link rel="stylesheet" href="css/style.css">
                <!-- Responsive-->
                <link rel="stylesheet" href="css/responsive.css">
                <!-- fevicon -->
                <link rel="icon" href="assets/fevicon.png" type="image/gif" />
                <!-- Scrollbar Custom CSS -->
                <link rel="stylesheet" href="css/jquery.mCustomScrollbar.min.css">
                <!-- Tweaks for older IEs-->
                <link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
                <!-- owl stylesheets --> 
                <link rel="stylesheet" href="css/owl.carousel.min.css">
                <link rel="stylesheet" href="css/owl.theme.default.min.css">
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.css" media="screen">
                <!--[if lt IE 9]>
                <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
                <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script><![endif]-->
            </head>
            <!-- body -->
            <body class="main-layout product_pagr">
                <!-- loader  -->
                <!--      <div class="loader_bg">
                         <div class="loader"><img src="assets/loading.gif" alt="#" /></div>
                      </div>-->
                <!-- end loader -->
                <!-- header -->
                <header class="section">
                    <!-- header inner -->
                    <div class="header_main">
                        <div class="header_main">
                            <div class="container">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-3 col-md-3 col-sm-3 col logo_section">
                                        <div class="full">
                                            <div class="center-desk">
                                                <div class="logo"> <a href="announcements.jsp"><img id="logonew" src="assets/logo2.png" alt="#"></a> </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-xl-9 col-lg-9 col-md-9 col-sm-9">
                                        <div class="menu-area">
                                            <div class="limit-box my-3">
                                                <nav class="main-menu">
                                                    <ul class="menu-area-main">
                                                        <!--<li> <a href="index.jsp">Home</a> </li>-->
                                                        <li> <a href="announcements.jsp">&larr; Back</a> </li>

                                                        <li><form  action="LogoutStu">
                                <button class="btn btn-danger"><strong>Logout</strong> </button>
                            </form></li>
                                                    </ul>
                                                </nav>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end header inner -->
                </header>
                <!-- end header -->
            </header>
            <!-- end header -->

            <!-- plant -->
            <div id="plant" class="section  product">
                <div class="container">
                    <h1>Welcome, ${GRNo}</h1>
                    <div class="row">
                        <div class="col-md-8 ">
                            <div class="titlepage">
                                <h2><strong class="black"> Apply</strong> for a Company</h2>
                                <span>Below are the companies that I can apply for</span>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="clothes_main section ">
                <div class="container">
                    <div class="row">
                        <%
                             Connection conn;
                Statement stmt;
                ResultSet rs;
                String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost:3306/";
                String dbname = "placement-assistance";
                String userName = "root";
                String Password = "";
                    
                     try {
                                Class.forName(driver).newInstance();
                                String branches = "";
                                conn = DriverManager.getConnection(url + dbname, userName, Password);
                                String gr_no = session.getAttribute("GRNo").toString();
                                stmt = conn.createStatement();
                                String sql = "Select qualification from student_register where grno =" + gr_no;
                                ResultSet branch = stmt.executeQuery(sql);
                                while (branch.next()) {
                                    branches = branch.getString("qualification");
                                }
                                String Query = "Select * from active_companies where " + branches + " = 1";

                                stmt = conn.createStatement();
                                rs = stmt.executeQuery(Query);
                                while (rs.next()) {
                                    
                                    String company_name = rs.getString("company_name");
                                    pageContext.setAttribute("company_name", company_name);
                                    Statement st = conn.createStatement();
                                    ResultSet rs2 = st.executeQuery("SELECT "+company_name+"  FROM student_register WHERE "+company_name+" =0 AND grno="+gr_no);
                                    while(rs2.next()){
                                        
     //                   
                       
                        %>

                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 ">
                            <div class="sport_product">
                                <!--<figure><img src="" alt="img"/></figure>-->
                                <h4><%=rs.getString("company_name")%></h4>
                                <br>
                            <h5 style="font-size: medium; font-weight: italic;">Offered CTC : <%=rs.getString("offered_ctc")%></h5>
                            <h5 style="font-size: medium; font-weight: italic;">Required CGPA : <%=rs.getString("required_cgpa")%></h5>
                           

                            <!--<td>></td>-->
                            <h4>
                            <a href="ApplyCompany.jsp?company=<%=rs.getString("company_name")%>">
                                    <button class="btn btn-outline-info" style="width: 150px; line-height: 1.0;" name="applyButton">Apply</button>

                                </a>
                                    </h4>
                            
<!--                               
                            </div>
                        </div>

                        <%
                            }
} 

                            } catch (Exception ex) {
                                out.println("Exception : " + ex.getMessage());
                                ex.printStackTrace();

                            }
                        %>

                    </div>
                </div>
            </div>
        </div>
        <!-- end plant -->
        <!-- footer start-->
        <div id="plant" class="footer layout_padding" style="margin-top: 100px; overflow: hidden;">
            <div class="container">
                <p>© 2021 All Rights Reserved. Design by Group BT-09</a></p>
            </div>
        </div>

        <!-- Javascript files-->
        <script src="js/jquery.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/bootstrap.bundle.min.js"></script>
        <script src="js/jquery-3.0.0.min.js"></script>
        <script src="js/plugin.js"></script>
        <!-- sidebar -->
        <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
        <script src="js/custom.js"></script>
        <!-- javascript --> 
        <script src="js/owl.carousel.js"></script>
        <script src="https:cdnjs.cloudflare.com/ajax/libs/fancybox/2.1.5/jquery.fancybox.min.js"></script>
        <script>
            $(document).ready(function () {
                $(".fancybox").fancybox({
                    openEffect: "none",
                    closeEffect: "none"
                });

                $(".zoom").hover(function () {

                    $(this).addClass('transition');
                }, function () {

                    $(this).removeClass('transition');
                });
            });

        </script> 


    </body>
</html>






<%-- 
    Document   : CompaniesAppliedStudent
    Created on : Jun 17, 2021, 7:05:43 PM
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
                <title>Announcements</title>
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
                                                <div class="logo"> <a href="index.html"><img id="logonew" src="assets/logo2.png" alt="#"></a> </div>
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
                                <h2><strong class="black"> My</strong>  Applications</h2>
                                <span>Below are the companies that I have applied so far</span>
                            </div>
                        </div>
                       
                    </div>
                </div>
            </div>
            <div class="clothes_main section ">
                <div class="container">
                    <div class="row">
                        <%
                    
                        ResultSet rs1, rs;
                     try {
                         Class.forName("com.mysql.jdbc.Driver");
                         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/placement-assistance", "root", "");
                         Statement st = conn.createStatement();
//                          ResultSet rs;
                         rs1 = st.executeQuery("Select company_name, offered_ctc from active_companies");
                         String gr_no = session.getAttribute("GRNo").toString();
                    
                         while(rs1.next() && rs1 != null){
                        
                         String company_name = rs1.getString("company_name");
                         String ctc = rs1.getString("offered_ctc");
//                             out.println(company_name + "\n");
     //                        out.println(company_name + "\n");
     //                        out.println(gr_no + "\n");
                            Statement st2 = conn.createStatement();
                             rs = st2.executeQuery("Select "+company_name+" from student_register where "+company_name+"=1 AND grno="+gr_no);
                             
//                            rs = st.executeQuery("SELECT CAST(CASE WHEN "+company_name+" = 1 and grno ="+gr_no+" THEN 1 ELSE 0 END AS bit), * FROM student_register)");

                         if (rs.next()) {
     //                        String company_name1 = rs.getString("company_name");
     //                   
                       
                        %>

                        <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 ">
                            <div class="sport_product">
                                <!--<figure><img src="" alt="img"/></figure>-->
                                <h4> <% out.println(company_name); %></h4>
                                <br>
                                <h5>Offered CTC : <% out.println(ctc); %></h5>
                            </div>
                        </div>

                        <%
                           }

                   }

                       } catch (Exception e) {
                           System.out.print(e);
                           e.printStackTrace();
                       }
                        %>

                    </div>
                </div>
            </div>
        </div>
        <!-- end plant -->
        <!-- footer start-->
        <div id="plant" class="footer layout_padding">
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






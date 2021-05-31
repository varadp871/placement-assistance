<%-- 
    Document   : placements
    Created on : 31 Mar, 2021, 10:15:48 PM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Placements | Vishwakarma Institute of Technology</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <link rel="stylesheet" type="text/css" href="./css/stylemenu.css">
    </head>
    <body>
        <div class='heading'>
		<img src= "./assets/logo2.png" id = 'logo' style="cursor: pointer;">
		<h1>Vishwakarma Institute of Technology</h1>
	</div>
<!--	<div class="navbar">
	
            <ul>
                 <li><a href="placements.jsp"> Placements </a></li> 
                 <li><a href="campus.jsp"> Campus </a></li> 
                 <li><a href="ContactUs.html"> Contact Us </a></li> 
            </ul>

        </div>-->
        <div>

        <center>
            <FORM method="GET" action="ad.jsp">
                <button type="submit"class="btn btn-outline-primary">
                    Admin Login
                </button>
            </FORM>
         <br>
        
            <FORM method="GET" action="stu.jsp">
 <button type="submit"class="btn btn-outline-primary">
                    Student Login
                </button>             </FORM>
        </center>
</div>
    </body>
    <script type="text/javascript">
  let logo = document.getElementById("logo");
  logo.addEventListener('click', ()=>{
    location.href = "index.jsp";
  })
</script>
</html>

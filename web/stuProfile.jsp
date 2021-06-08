<%-- 
    Document   : fillApplication
    Created on : May 29, 2021, 4:42:12 PM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Your Profile</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <style>
            body {
                font-family: Arial, Helvetica, sans-serif;
                background-color: black;
            }

            * {
                box-sizing: border-box;
            }

            /* Add padding to containers */
            .container {
                padding: 16px;
                background-color: white;
            }

            /* Full-width input fields */
            input[type=text], input[type=password] {
                width: 100%;
                padding: 15px;
                margin: 5px 0 22px 0;
                display: inline-block;
                border: none;
                background: #f1f1f1;
            }

            input[type=text]:focus, input[type=password]:focus {
                background-color: #ddd;
                outline: none;
            }

            /* Overwrite default styles of hr */
            hr {
                border: 1px solid #f1f1f1;
                margin-bottom: 25px;
            }

            /* Set a style for the submit button */
            .registerbtn {
                background-color: #04AA6D;
                color: white;
                padding: 16px 20px;
                margin: 8px 0;
                border: none;
                cursor: pointer;
                width: 100%;
                opacity: 0.9;
            }

            .registerbtn:hover {
                opacity: 1;
            }

            /* Add a blue text color to links */
            a {
                color: dodgerblue;
            }

            /* Set a grey background color and center the text of the "sign in" section */
            .signin {
                background-color: #f1f1f1;
                text-align: center;
            }
        </style>
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



    <body>

        <form method="POST" action="Profile" enctype="multipart/form-data">  
            <div class="container">
                <label> GR Number </label>         
                <input type="text" name="gr_no" size="15"/> <br> <br>  
                <label> Email-ID </label>     
                <input type="text" name="email" size="15"/> <br> <br>  
                <label> Full Name: </label>         
                <input type="text" name="full_name" size="15"/> <br> <br>  
                <label> Gender </label>         
                <input type="text" name="gender" size="15"/> <br> <br> 
                <label> Date Of Birth </label>         
                <input type="text" name="dob" size="15"/> <br> <br> 
                <label> Mobile No </label>         
                <input type="text" name="mb_no" size="15"/> <br> <br> 
                <label> Personal Email </label>         
                <input type="text" name="personal_email" size="15"/> <br> <br> 
                <label> Qualification </label>
                <select class="form-select" aria-label="qualification" name ="qualification">
                    <option selected value="COMP">Computer Science</option>
                    <option value="IT">IT</option>
                    <option value="ENTC">Electronics & Telecommunications</option>
                    <option value="ELEX">Electronics</option>
                    <option value="MECH">Mechanical</option>
                    <option value="INDUS">Industrial</option>
                    <option value="PROD">Production</option>
                    <option value="CHEM">Chemical</option>
                </select> 
                <label> Passing Year </label>         
                <input type="text" name="passing_year" size="15"/> <br> <br>  
                <label> Tenth % </label>         
                <input type="text" name="tenth_per" size="15"/> <br> <br>  
                <label> 12th % </label>         
                <input type="text" name="twelth_per" size="15"/> <br> <br>  
                <label> Diploma % </label>         
                <input type="text" name="diploma_per" size="15"/> <br> <br>  
                <label> College Name </label>         
                <input type="text" name="college_name" size="15"/> <br> <br>  
                <label> Graduation CGPA </label>         
                <input type="text" name="grad_cgpa" size="15"/> <br> <br>  
                <label> Graduation Percentage </label>         
                <input type="text" name="grad_per" size="15"/> <br> <br>  
                <label> Resume </label>         
                <input type="file" name="resume" size="15" />
                <br />
                <input type="submit" value="Update" />    
                <!--<td><input type="submit" value="Register1"/></td>-->
            </div>

        </form>  

        <form action="LogoutStu">
            <button type="submit" class="btn btn-danger">Logout</button>
        </form>

    </body>
</html>

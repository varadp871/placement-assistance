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
            input::-webkit-outer-spin-button,
            input::-webkit-inner-spin-button {
                -webkit-appearance: none;
                margin: 0;
            }

            /* Firefox */
            input[type=number] {
                -moz-appearance: textfield;
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

        <main class="container shadow p-3 mb-5 bg-body rounded position-absolute top-50 start-50 translate-middle border-5 border-top">

            <div>
                <h1 class="text-muted fw-bold position-fixed top-0 start-50 translate-middle-x my-3 mx-3 pt-4">Fill Your Profile</h1>    
                <div class="container nav justify-content-end mt-4">
                    <a class="btn btn-primary" href="announcements.jsp">&larr; Back</a>
                    &nbsp;
                    &nbsp;
                    <form action="LogoutStu" class="nav-item">
                        <button type="submit" class="btn btn-danger">Logout</button>
                    </form>
                </div>
            </div>
            <form method="POST" action="Profile?gr_no=${GRNo}" enctype="multipart/form-data">  
                <div class="container mx-5 px-5 my-5">
                    <div class="row">
                        <div class="col mx-3">
                            <label for="floatingInputValue">GR Number</label>
                            <input type="text" class="form-control my-2" id="floatingInputValue" placeholder="GR Number" value="${GRNo}" disabled>
                            <%    String gr_no = (String) session.getAttribute("GRNo");
                            %>
                            <label for="floatingInputValue">Email-ID </label>
                            <input type="email" class="form-control my-2" id="floatingInputValue" placeholder="Email-ID" name="email" required> 
                            <label for="floatingInputValue">Full Name</label>
                            <input type="text" class="form-control my-2" id="floatingInputValue" placeholder="Your Full Name" name="full_name" required>
                            <label for="floatingInputValue">Gender</label>
                            <select class="form-select my-2" aria-label="gender" name ="gender">
                                <option selected value="M">Male</option>
                                <option value="F">Female</option>
                                <option value="T">Other</option>

                            </select> 
                            <label for="floatingInputValue">Date of Birth (YYYY-MM-DD)</label>
                            <input type="text" class="form-control my-2" id="floatingInputValue" placeholder="Date of Birth" name="dob" required>
                        </div>

                        <div class="col mx-5">
                            <label for="floatingInputValue">Mobile Number </label>
                            <input type="number" class="form-control my-2" id="floatingInputValue" placeholder="Mobile Number" name="mb_no" required> 
                            <label for="floatingInputValue">Personal Email </label>
                            <input type="email" class="form-control my-2" id="floatingInputValue" placeholder="Personal Email" name="personal_email" required> 
                            <label> Qualification </label>
                            <select class="form-select my-2" aria-label="qualification" name ="qualification">
                                <option selected value="COMP">Computer Science</option>
                                <option value="IT">IT</option>
                                <option value="ENTC">Electronics & Telecommunications</option>
                                <option value="ELEX">Electronics</option>
                                <option value="MECH">Mechanical</option>
                                <option value="INDUS">Industrial</option>
                                <option value="PROD">Production</option>
                                <option value="CHEM">Chemical</option>
                            </select> 
                            <label for="floatingInputValue"> 10th % </label>
                            <input type="text" class="form-control my-2" id="floatingInputValue" placeholder="10th %" name="tenth_per" required> 
                            <label for="floatingInputValue">12th % </label>
                            <input type="number" class="form-control my-2" id="floatingInputValue" placeholder="12th %" name="twelth_per" required> 
                            <label for="floatingInputValue">Resume </label>
                            <input type="file" class="form-control my-2" id="floatingInputValue" placeholder="Upload Resume" name="resume" required> 



                        </div>
                        <div class="col mx-3">
                            <label for="floatingInputValue">Diploma %   </label>
                            <input type="text" class="form-control my-2" id="floatingInputValue" placeholder="Diploma %" name="diploma_per" required> 
                            <label for="floatingInputValue">Passing Year  </label>
                            <input type="number" class="form-control my-2" id="floatingInputValue" placeholder="Passing Year" name="passing_year" required> 
                            <label for="floatingInputValue">College Name  </label>
                            <input type="text" class="form-control my-2" id="floatingInputValue" placeholder="College Name" name="college_name" required> 
                            <label for="floatingInputValue">Graduation CGPA  </label>
                            <input type="text" class="form-control my-2" id="floatingInputValue" placeholder="Graduation CGPA" name="grad_cgpa" required> 
                            <label for="floatingInputValue">Graduation Percentage  </label>
                            <input type="number" class="form-control my-2" id="floatingInputValue" placeholder="Graduation Percentage" name="grad_per" required> 





                        </div>
                    </div>




                    <button type="submit" class="btn btn-outline-primary mx-3">Register Info</button>    
                    <!--<td><input type="submit" value="Register1"/></td>-->

                </div>

            </form>  


        </main>




    </body>
    <script src="https://cdn.jsdelivr.net/npm/darkmode-js@1.5.7/lib/darkmode-js.min.js"></script>
<script>
  function addDarkmodeWidget() {
    new Darkmode().showWidget();
  }
  window.addEventListener('load', addDarkmodeWidget);
</script>
</html>

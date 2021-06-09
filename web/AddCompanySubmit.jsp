<%-- 
    Document   : AddCompanySubmit
    Created on : May 31, 2021, 1:08:08 PM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <title>Add a company</title>
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

            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

            if (session.getAttribute("username") == null) {
                response.sendRedirect("ad.jsp");
            }
        %>


        <main class="container shadow p-3 mb-5 bg-body rounded position-absolute top-50 start-50 translate-middle border-5 border-top">
            <div>
                <h1 class="text-muted fw-bold position-fixed top-0 start-50 translate-middle-x my-3 mx-3 pt-4">Add a new Company</h1>    
                <div class="container nav justify-content-end mt-2">
                    <form action="LogoutAdmin" class="nav-item">
                        <button type="submit" class="btn btn-danger">Logout</button>
                    </form>
                </div>
            </div>


            <form action="AddCompany">
                <div class="container my-5 py-2">
                    <div class="row my-5">
                        <div class="col py-3">
                            <div class="mb-3">
                                <div class="form-floating mb-4">
                                    <input type="text" class="form-control" id="company_name" placeholder="For Ex : Google" name="company_name" required="">
                                    <label for="company_name">Company Name</label>
                                </div>
                                <!--                                <label for="company_name" class="form-label">Company Name</label>
                                                                <input type="text" class="form-control" id="company_name" aria-describedby="company_name" name="company_name">-->
                            </div>
                            <div class="mb-3">
                                <div class="form-floating mb-4">
                                    <input type="number" class="form-control" id="offered_ctc" placeholder="For Ex : 50000" name="offered_ctc" required>
                                    <label for="offered_ctc">Offered CTC</label>
                                </div>
                                <!--                                <label for="offered_ctc" class="form-label">CTC</label>
                                                                <input type="number" class="form-control" id="offered_ctc" name="offered_ctc" >-->
                            </div>
                            <div class="mb-3">
                                <div class="form-floating mb-4">
                                    <input type="text" class="form-control" id="required_cgpa" placeholder="For Ex : 8.5" name="required_cgpa" required="">
                                    <label for="required_cgpa">CGPA Requirements</label>
                                </div>
                                <!--                                <label for="required_cgpa" class="form-label">CGPA Requirements</label>
                                                                <input type="text" class="form-control" id="required_cgpa" name="required_cgpa">-->
                            </div>
                        </div>
                        <div class="col py-2">
                            <h4 class="text-muted fw-bold text-center">Select Branches</h4>
                            <div class="row ms-4 mt-2">
                                <div class="col my-3 mx-2">
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input" name="branch" id ="COMP" value="COMP">
                                        <label class="form-check-label" for="COMP" style="cursor : pointer;">Computer Science</label>
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input" name="branch" id="IT" value="IT">
                                        <label class="form-check-label" for="IT" style="cursor : pointer;">IT</label>
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input" name="branch" id="ENTC" value="ENTC">
                                        <label class="form-check-label" for="ENTC" style="cursor : pointer;">ENTC</label>
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input" name="branch" id="ELEX" value="ELEX">
                                        <label class="form-check-label" for="ELEX" style="cursor : pointer;">Electronics</label>
                                    </div>
                                </div>
                                <div class="col my-3 mx-2">
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input" name="branch" id="MECH" value="MECH">
                                        <label class="form-check-label" for="MECH" style="cursor : pointer;">Mechanical</label>
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input" name="branch" id="INDUS" value="INDUS">
                                        <label class="form-check-label" for="INDUS" style="cursor : pointer;">Industrial</label>
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input" name="branch" id="PROD" value="PROD">
                                        <label class="form-check-label" for="PROD" style="cursor : pointer;">Production</label>
                                    </div>
                                    <div class="mb-3 form-check">
                                        <input type="checkbox" class="form-check-input" name="branch" id="CHEM" value="CHEM" >
                                        <label class="form-check-label" for="CHEM" style="cursor : pointer;">Chemical</label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col py-3">
                            <div class="mb-3">
                                <div class="form-floating">
                                    <textarea class="form-control" placeholder="Describe the Company here" id="description" name="description" style="height: 225px"></textarea>
                                    <label for="description">Description</label>
                                </div>

                            </div>
                        </div>
                    </div>

                    <button type="submit" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addCompanyModal">Add Company</button>
                </div>
            </form>

            <!-- Modal -->


        </main>



        <div class="modal fade" id="addCompanyModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title text-success" id="staticBackdropLabel">SUCCESS!</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        Company Added Successfully!
                    </div>
                </div>
            </div>
        </div>





    </body>

</html>

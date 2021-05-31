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
    </head>
    <body>


        <h1>Add a new Company</h1>

        <form action="AddCompany">
            <div class="mb-3">
                <label for="company_name" class="form-label">Company Name</label>
                <input type="text" class="form-control" id="company_name" aria-describedby="company_name" name="company_name">
            </div>
            <div class="mb-3">
                <label for="offered_ctc" class="form-label">CTC</label>
                <input type="number" class="form-control" id="offered_ctc" name="offered_ctc" >
            </div>
            <div class="mb-3">
                <label for="required_cgpa" class="form-label">CGPA Requirements</label>
                <input type="text" class="form-control" id="required_cgpa" name="required_cgpa">
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" name="branch" id ="computer_science" value="comp">
                <label class="form-check-label" for="computer_science">Computer Science</label>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" name="branch" id="info_tech" value="it">
                <label class="form-check-label" for="info_tech">Information Technology</label>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" name="branch" id="entc" value="entc">
                <label class="form-check-label" for="entc">Electronics & Telecommunications</label>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" name="branch" id="elex" value="elex">
                <label class="form-check-label" for="elex">Electronics</label>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" name="branch" id="mech" value="mech">
                <label class="form-check-label" for="mech">Mechanical</label>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" name="branch" id="indus" value="indus">
                <label class="form-check-label" for="indus">Industrial</label>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" name="branch" id="prod" value="prod">
                <label class="form-check-label" for="prod">Production</label>
            </div>
            <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" name="branch" id="chem" value="chem" >
                <label class="form-check-label" for="chem">Chemical</label>
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Description</label>
                <textarea type="text" class="form-control" id="description" aria-describedby="description" name="description"></textarea>
            </div>


           
        </form>
     <button type="button" class="btn btn-success" data-bs-toggle="modal" data-bs-target="#addCompanyModal">Add Company</button>
            <!-- Modal -->
            <div class="modal fade" id="addCompanyModal" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="staticBackdropLabel">SUCCESS!</h5>
                            <button type="submit" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            Company Added Successfully
                        </div>
                        <div class="modal-footer">
                            <button type="submit" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            
                        </div>
                    </div>
                </div>
            </div>
        <form action="LogoutAdmin">
            <button type="submit" class="btn btn-danger">Logout</button>
        </form>


        <!-- Modal -->



    </body>

</html>

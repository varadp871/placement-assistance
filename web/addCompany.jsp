<%-- 
    Document   : addCompany
    Created on : May 31, 2021, 1:07:35 AM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <title>Add a company</title>
    </head>
    <body>
         <%

                response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");

                if (session.getAttribute("username") == null) {
                    response.sendRedirect("ad.jsp");
                }
            %>
        <h1>Add a new Company</h1>

        <form action="AddCompanySubmit.jsp">
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
  <button type="submit" class="btn btn-success">Add Company</button>
</form>
        
        <form action="LogoutAdmin">
            <button type="submit" class="btn btn-danger">Logout</button>
        </form>
    </body>
</html>

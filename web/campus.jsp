<%-- 
    Document   : campus
    Created on : 1 Apr, 2021, 8:14:53 AM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <title>Campus Societies</title>
    <link rel="stylesheet" type="text/css" href="./css/campus.css" />
    
  </head>
  <body>
    
      <div class='heading'>
		<img src= "./assets/logo2.png" id = 'logo' style="cursor: pointer;">
		<h1>Campus Societies | Vishwakarma Institute of Technology, Pune</h1>
	</div>
	
</div>
    <br />
    <div class="heading">
	  <h2><b>1)The Robotics Forum</b></h2>
	</div>
      <br />
      <div class="content">
        <img src="./assets/trf.jpg" class="img image-container" />
        <p class="para1">
          The Robotics Forum is a group of dedicated individuals, right from
          First Year to Final Year, undergraduates to Professors and HODs
          working passionately in the field of Robotics to take the college to
          new heights in this field. The Forum focuses on development through
          knowledge transfer from faculty and alumni to the students and from
          seniors to juniors through the medium of various workshops held
          yearlong, and strongly believes in - "Learning Through Doing".
        </p>
      </div>
      <br />
      <div class="heading">
        <br />
		<h2><b> 2)The SAE Forum</b></h2>
      </div>
        <br />
        <div class="content">
            <img src="./assets/sae1.jpg" class="img image-container" />
		<p class="para1">
			  SAE, the Society of Automotive Engineers in VIT lays principal
			  emphasis on automotive, aerospace, and commercial vehicles. The SAE
			  team of VIT, Pune has many national awards to its credit. Belonging to
			  the mechanical dept, this club is in-charge of conducting industrial
			  visits, technical workshops, guest lectures for students from all
			  branches. Along with providing an annual SAE India membership, it has
			  conducted visits to Hyundai,Forbes Marshall, Sandvik, John Deere etc
			  and workshops like CATIA, ansys, lathe aiming to bridge the gap
			  between students and industry. SAE VIT, Pune is an excellent
			  organisation which provides a crucial platform for the students to
			  stay in touch with the latest advancements and pave a path for
			  excellence and innovation in the field of automotive engineering..
			</p>
        </div>
		<img src="./assets/sae2.jpg" class="img" />
		<img src="./assets/sae3.jpg" class="img" />
      </div>
    </div>
  </body>
  <footer>
	<p>All Rights Reserved 2020 &copy; VIT, Pune. </p>
	<p>Website Designed by BT-09.</p>
</footer>

<script type="text/javascript">
  let logo = document.getElementById("logo");
  logo.addEventListener('click', ()=>{
    location.href = "index.jsp";
  })
</script>
</html>


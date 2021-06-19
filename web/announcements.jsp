<%-- 
    Document   : announcements.jsp
    Created on : 16 May, 2021, 4:10:38 PM
    Author     : my pc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>-->
<!--<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">

        <title>Announcements</title>
    </head>
    <body>-->

      

<!--        <h1 class="text-muted fst-italic ms-4 pt-4">Hello, ${GRNo}!</h1>
        
      
      
      
      

    </body>
   
</html>-->

<!DOCTYPE html>
<html style="font-size: 16px;">
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="utf-8">
    <meta name="keywords" content="writing courses, About our students, Online Writing Classes,Learning, and Community, 01, 02, 03, 04, How to Describe Nature, Questions?&nbsp;Comments?">
    <meta name="description" content="">
    <meta name="page_type" content="np-template-header-footer-from-plugin">
    <title>Home</title>
    <link rel="stylesheet" href="css/nicepage.css" media="screen">
<link rel="stylesheet" href="css/Announcements.css" media="screen">
    <script class="u-script" type="text/javascript" src="js/jquery.js" defer=""></script>
    <script class="u-script" type="text/javascript" src="js/nicepage.js" defer=""></script>
    <meta name="generator" content="Nicepage 3.17.5, nicepage.com">
    <link id="u-theme-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i|Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i">
    <link id="u-page-google-font" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Oswald:200,300,400,500,600,700">
    
    
    
    <script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": "",
		"logo": "assets/vitlogo.png",
		"sameAs": []
}</script>
    <meta property="og:title" content="Home">
    <meta property="og:type" content="website">
    <meta name="theme-color" content="#478ac9">
      <%

            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1

            response.setHeader("Pragma", "no-cache");//HTTP 1.0

            response.setHeader("Expires", "0"); //Proxies

            if (session.getAttribute("GRNo") == null) {
                response.sendRedirect("stu.jsp");
            }

            if (session.getAttribute("registered") == null) {
                response.sendRedirect("announcements0.jsp");

            }

 %>
 
 <style>
     #logoutnew :hover {
       
         background-color: #a40606; 
         color: white;
         transition: background-color 0.25s ease-in-out;
     }
     </style>
  </head>
  
  <body class="u-body"><header class="u-clearfix u-header u-header" id="sec-147c"><div class="u-clearfix u-sheet u-sheet-1">
              <div style="display: flex; justify-content: space-between;">
                   <a href="announcements.jsp" class="u-image u-logo u-image-1">
          <img src="assets/vitlogo.png" class="u-logo-image u-logo-image-1" style="width: 100px; height: 100px;">
        </a>
                  <div style="display: flex;">
                        <!--<a href="announcements.jsp" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-none u-text-palette-1-base u-btn-1">Home</a>-->
        <form action="LogoutStu" id="logoutnew">
            <button class="u-btn" type="submit">Logout</button>
        </form>
                  </div>
      
              </div>      
       
          </div></header>
    <section class="u-align-center u-clearfix u-palette-4-base u-section-1" id="carousel_6b23">
      <div class="u-clearfix u-expanded-width u-gutter-0 u-layout-wrap u-layout-wrap-1">
        <div class="u-layout" style="">
          <div class="u-layout-row" style="">
            <div class="u-container-style u-layout-cell u-left-cell u-shape-rectangle u-size-30 u-size-xs-60 u-white u-layout-cell-1" src="">
              <div class="u-container-layout u-container-layout-1"><span class="u-icon u-icon-circle u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 55 55" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-54fa"></use></svg><svg class="u-svg-content" viewBox="0 0 55 55" x="0px" y="0px" id="svg-54fa" style="enable-background:new 0 0 55 55;"><path d="M55,27.5C55,12.337,42.663,0,27.5,0S0,12.337,0,27.5c0,8.009,3.444,15.228,8.926,20.258l-0.026,0.023l0.892,0.752
	c0.058,0.049,0.121,0.089,0.179,0.137c0.474,0.393,0.965,0.766,1.465,1.127c0.162,0.117,0.324,0.234,0.489,0.348
	c0.534,0.368,1.082,0.717,1.642,1.048c0.122,0.072,0.245,0.142,0.368,0.212c0.613,0.349,1.239,0.678,1.88,0.98
	c0.047,0.022,0.095,0.042,0.142,0.064c2.089,0.971,4.319,1.684,6.651,2.105c0.061,0.011,0.122,0.022,0.184,0.033
	c0.724,0.125,1.456,0.225,2.197,0.292c0.09,0.008,0.18,0.013,0.271,0.021C25.998,54.961,26.744,55,27.5,55
	c0.749,0,1.488-0.039,2.222-0.098c0.093-0.008,0.186-0.013,0.279-0.021c0.735-0.067,1.461-0.164,2.178-0.287
	c0.062-0.011,0.125-0.022,0.187-0.034c2.297-0.412,4.495-1.109,6.557-2.055c0.076-0.035,0.153-0.068,0.229-0.104
	c0.617-0.29,1.22-0.603,1.811-0.936c0.147-0.083,0.293-0.167,0.439-0.253c0.538-0.317,1.067-0.648,1.581-1
	c0.185-0.126,0.366-0.259,0.549-0.391c0.439-0.316,0.87-0.642,1.289-0.983c0.093-0.075,0.193-0.14,0.284-0.217l0.915-0.764
	l-0.027-0.023C51.523,42.802,55,35.55,55,27.5z M2,27.5C2,13.439,13.439,2,27.5,2S53,13.439,53,27.5
	c0,7.577-3.325,14.389-8.589,19.063c-0.294-0.203-0.59-0.385-0.893-0.537l-8.467-4.233c-0.76-0.38-1.232-1.144-1.232-1.993v-2.957
	c0.196-0.242,0.403-0.516,0.617-0.817c1.096-1.548,1.975-3.27,2.616-5.123c1.267-0.602,2.085-1.864,2.085-3.289v-3.545
	c0-0.867-0.318-1.708-0.887-2.369v-4.667c0.052-0.52,0.236-3.448-1.883-5.864C34.524,9.065,31.541,8,27.5,8
	s-7.024,1.065-8.867,3.168c-2.119,2.416-1.935,5.346-1.883,5.864v4.667c-0.568,0.661-0.887,1.502-0.887,2.369v3.545
	c0,1.101,0.494,2.128,1.34,2.821c0.81,3.173,2.477,5.575,3.093,6.389v2.894c0,0.816-0.445,1.566-1.162,1.958l-7.907,4.313
	c-0.252,0.137-0.502,0.297-0.752,0.476C5.276,41.792,2,35.022,2,27.5z"></path></svg></span>
                <h1 class="u-align-center u-custom-font u-font-oswald u-text u-text-1">Welcome&nbsp;  <br>
                    <span style="font-weight: bolder;"> ${GRNo} </span>
                  <br>
                </h1>
                  <br>
                  <hr>
                  <div class="u-align-center" style="display: flex; justify-content: center;">
                      <form action="CompaniesAppliedStudent.jsp" >
            <button type="submit" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-3 u-text" style="font-weight: bolder;" >MY APPLICATIONS</button>
        </form>
                  </div>
                <!--<a href="https://nicepage.com/k/awards-website-templates" class="u-btn u-button-style u-palette-2-light-1 u-text-palette-2-base u-btn-1">My applications.</a>-->
              </div>
            </div>
            <div class="u-palette-2-base u-align-left u-container-style u-image u-layout-cell u-right-cell u-size-30 u-size-xs-80 u-image-1" >
                <img class="u-container-layout u-valign-bottom u-container-layout-2" src="assets/stud.jpg"></div>
            </div>
          </div>
        </div>
    </section>
                  <section class="u-align-center u-clearfix u-section-2" id="sec-d261" style="overflow: hidden;">
      <div class="u-clearfix u-sheet u-valign-middle-xl u-sheet-1">
        <div class="u-expanded-width-lg u-expanded-width-md u-expanded-width-sm u-expanded-width-xs u-list u-list-1">
            <div class="u-repeater u-repeater-1" style="margin-top: -300px;">
            <div class="u-container-style u-list-item u-repeater-item u-white">
              <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-1"><span class="u-icon u-icon-circle u-palette-2-light-1 u-spacing-15 u-text-palette-2-base u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 512 512" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-144a"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 512 512" id="svg-144a"><g><path d="m471 262.813c22.945-2.032 41-21.348 41-44.813v-140c0-24.813-20.187-45-45-45h-149c-24.813 0-45 20.187-45 45v59h-187c-24.813 0-45 20.187-45 45v180c0 5.258.915 10.305 2.58 15h-16.58c-14.888 0-27 12.112-27 27 0 41.355 33.645 75 75 75h362c41.355 0 75-33.645 75-75 0-14.888-12.112-27-27-27h-16.58c1.665-4.695 2.58-9.742 2.58-15zm-168-184.813c0-8.271 6.729-15 15-15h149c8.271 0 15 6.729 15 15v140c0 8.271-6.729 15-15 15h-139c-2.812 0-5.566.79-7.95 2.28l-30.244 18.903 12.562-41.873c.419-1.398.632-2.85.632-4.31zm134 371h-362c-23.805 0-43.351-18.581-44.901-42h451.802c-1.55 23.419-21.096 42-44.901 42zm-294-185c0-9.374 7.626-17 17-17s17 7.626 17 17-7.626 17-17 17-17-7.626-17-17zm-8 64c0-9.056 11.682-17 25-17 7.142 0 14.023 2.228 18.879 6.113 2.287 1.829 6.121 5.675 6.121 10.887v49h-50zm80 49v-49c0-12.97-6.334-25.477-17.38-34.313-.248-.199-.507-.385-.759-.579 6.34-8.012 10.139-18.122 10.139-29.108 0-25.916-21.084-47-47-47s-47 21.084-47 47c0 10.999 3.808 21.118 10.16 29.134-11.144 8.607-18.16 21.049-18.16 34.866v49h-19c-8.271 0-15-6.729-15-15v-180c0-8.271 6.729-15 15-15h187v38.799l-11.929 39.763c-3.623 12.076.512 24.822 10.535 32.47 5.399 4.12 11.772 6.202 18.175 6.202 5.484 0 10.991-1.528 15.923-4.611l26.598-16.623h108.698v99c0 8.271-6.729 15-15 15z"></path><path d="m408 169h-32c-8.284 0-15 6.716-15 15s6.716 15 15 15h32c8.284 0 15-6.716 15-15s-6.716-15-15-15z"></path><path d="m352 127h80c8.284 0 15-6.716 15-15s-6.716-15-15-15h-80c-8.284 0-15 6.716-15 15s6.716 15 15 15z"></path>
</g></svg>
            
            
          </span>
                <div class="u-container-style u-group u-white u-group-1">
                  <div class="u-container-layout u-container-layout-2">
                    <h5 class="u-text u-text-1">Apply for a Company</h5>
                      <form action="TrackCompanies.jsp">
            <button type="submit" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-3">Apply Here</button>
        </form>
                    <!--<a href="https://nicepage.com/c/video-website-mockup" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-1">APPLY</a>-->
                  </div>
                </div>
              </div>
            </div>
            
            <div class="u-container-style u-list-item u-repeater-item">
              <div class="u-container-layout u-similar-container u-valign-bottom u-container-layout-5"><span class="u-icon u-icon-circle u-palette-2-light-1 u-spacing-15 u-text-palette-2-base u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 -48 511.99864 511" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-a935"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 -48 511.99864 511" id="svg-a935"><path d="m24.859375 312.96875c3.820313 1.910156 7.933594 3.230469 12.175781 3.96875l-6.609375 9.4375c-1.335937 1.910156-2.207031 4.101562-2.550781 6.402344l-9.839844 66.359375c-.832031 5.621093 1.578125 11.230469 6.234375 14.488281 4.660157 3.261719 10.753907 3.605469 15.746094.902344l55.574219-30.09375c7.675781 13.867187 22.457031 23.28125 39.398437 23.28125 11.515625 0 22.035157-4.347656 30-11.484375 7.96875 7.136719 18.488281 11.484375 30 11.484375 24.816407 0 45.003907-20.1875 45.003907-45v-5.742188c27.902343 13.578125 58.972656 20.742188 90 20.742188 32.050781 0 63.835937-7.351563 92.003906-21.246094v36.246094c0 5.199218 2.691406 10.027344 7.113281 12.761718 4.414063 2.726563 9.9375 2.984376 14.59375.65625l60.003906-30c5.082031-2.542968 8.292969-7.734374 8.292969-13.417968v-180.003906c0-8.285157-6.71875-15-15-15-23.894531 0-81.863281 0-103.53125 0l-105.816406-51.777344 40.203125-57.414063c4.746093-6.78125 3.101562-16.140625-3.6875-20.890625l-49.148438-34.417968c-6.78125-4.746094-16.140625-3.101563-20.890625 3.683593-6.351562 9.070313-46.882812 66.957031-53.191406 75.964844-12.304688-6.464844-27.058594-6.433594-36.417969-2.371094l-57.078125 24.796875c-8.273437 3.597656-15.207031 9.519532-20.042968 17.132813l-81.90625 128.828125c-5.320313 8.371094-7.523438 22.734375-3.203126 35.699218 3.800782 11.402344 11.816407 20.644532 22.570313 26.023438zm27.253906 60.894531 4.921875-33.179687 13.414063-19.160156c5.75 8.394531 13.574219 15.25 22.730469 19.84375l-11.570313 16.523437zm82.875 3.855469c-8.269531 0-15-6.730469-15-15.003906v-7.332032l5.371094-7.667968h24.628906v15c0 8.273437-6.726562 15.003906-15 15.003906zm60.003907 0c-8.273438 0-15-6.730469-15-15.003906v-15h30v15c0 8.273437-6.730469 15.003906-15 15.003906zm287.007812-24.273438-30.003906 15v-170.734374h30.003906zm-98.597656-157.261718c2.054687 1.003906 4.308594 1.527344 6.59375 1.527344h32v125.53125c-10.109375 3.929687-41.5 24.472656-92 24.472656-53.535156 0-86.507813-23.710938-98.296875-28.417969-2.140625-1.070313-4.5-1.582031-6.707031-1.582031h-105.003907c-15.339843 0-28.019531-11.574219-29.78125-26.449219.46875-2.175781.425781-4.410156-.070312-6.546875 1.507812-15.140625 14.320312-27.003906 29.851562-27.003906h92.578125c31.363282 0 60.855469-12.214844 83.035156-34.394532 5.855469-5.859374 5.855469-15.355468 0-21.214843-5.859374-5.859375-15.355468-5.859375-21.214843 0-16.515625 16.511719-38.46875 25.609375-61.820313 25.609375h-3.179687l60.84375-86.898438zm-147.71875-110.640625 24.574218 17.210937-87.496093 124.960938h-36.625c12.753906-18.214844 87.847656-125.460938 99.546875-142.171875zm34.414062-49.148438 24.578125 17.207031-17.210937 24.578126-24.574219-17.210938zm-238.804687 230.1875 81.421875-128.066406c1.613281-2.539063 3.925781-4.511719 6.683594-5.710937l56.363281-24.488282c2.503906-.734375 5.085937-.785156 7.523437-.242187l-87.289062 124.660156c-18.449219 8.082031-32.082032 25.175781-35.285156 45.691406-2.742188 7.703125-14.660157 11.59375-22.433594 7.707031-7.316406-3.65625-10.222656-12.339843-6.984375-19.550781zm0 0"></path></svg>
            
            
          </span>
                <div class="u-container-style u-group u-video-cover u-group-3">
                  <div class="u-container-layout u-container-layout-6">
                    <h5 class="u-text u-text-3">Register Your Profile</h5>
                      <form action="stuProfile.jsp">
            <button type="submit" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-3">Register Here</button>
        </form>
                    <!--<a href="https://nicepage.com/c/video-website-mockup" class="">UPDATE</a>-->
                  </div>
                </div>
              </div>
            </div>
          
          </div>
        </div>
      </div>
    </section>
                  <br>
                  <hr>
                  
    
<!--                  <footer class="u-clearfix u-footer u-palette-2-base" id="sec-589f" style="margin-top: -200px; overflow: hidden;">
        <div class="u-align-center u-social-icons u-spacing-2 u-social-icons-1">
          <a class="u-social-url" target="_blank" href=""><span class="u-icon u-icon-circle u-social-facebook u-social-icon u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-83b0"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 112 112" x="0px" y="0px" id="svg-83b0"><path d="M75.5,28.8H65.4c-1.5,0-4,0.9-4,4.3v9.4h13.9l-1.5,15.8H61.4v45.1H42.8V58.3h-8.8V42.4h8.8V32.2 c0-7.4,3.4-18.8,18.8-18.8h13.8v15.4H75.5z"></path></svg></span>
          </a>
          <a class="u-social-url" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-twitter u-icon-2"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-06a8"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 112 112" x="0px" y="0px" id="svg-06a8"><path d="M92.2,38.2c0,0.8,0,1.6,0,2.3c0,24.3-18.6,52.4-52.6,52.4c-10.6,0.1-20.2-2.9-28.5-8.2 c1.4,0.2,2.9,0.2,4.4,0.2c8.7,0,16.7-2.9,23-7.9c-8.1-0.2-14.9-5.5-17.3-12.8c1.1,0.2,2.4,0.2,3.4,0.2c1.6,0,3.3-0.2,4.8-0.7 c-8.4-1.6-14.9-9.2-14.9-18c0-0.2,0-0.2,0-0.2c2.5,1.4,5.4,2.2,8.4,2.3c-5-3.3-8.3-8.9-8.3-15.4c0-3.4,1-6.5,2.5-9.2 c9.1,11.1,22.7,18.5,38,19.2c-0.2-1.4-0.4-2.8-0.4-4.3c0.1-10,8.3-18.2,18.5-18.2c5.4,0,10.1,2.2,13.5,5.7c4.3-0.8,8.1-2.3,11.7-4.5 c-1.4,4.3-4.3,7.9-8.1,10.1c3.7-0.4,7.3-1.4,10.6-2.9C98.9,32.3,95.7,35.5,92.2,38.2z"></path></svg></span>
          </a>
          <a class="u-social-url" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-instagram u-icon-3"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style="width: 200px; height: 200px;"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-150d"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 112 112" x="0px" y="0px" id="svg-150d"><path d="M55.9,32.9c-12.8,0-23.2,10.4-23.2,23.2s10.4,23.2,23.2,23.2s23.2-10.4,23.2-23.2S68.7,32.9,55.9,32.9z M55.9,69.4c-7.4,0-13.3-6-13.3-13.3c-0.1-7.4,6-13.3,13.3-13.3s13.3,6,13.3,13.3C69.3,63.5,63.3,69.4,55.9,69.4z"></path><path d="M79.7,26.8c-3,0-5.4,2.5-5.4,5.4s2.5,5.4,5.4,5.4c3,0,5.4-2.5,5.4-5.4S82.7,26.8,79.7,26.8z"></path><path d="M78.2,11H33.5C21,11,10.8,21.3,10.8,33.7v44.7c0,12.6,10.2,22.8,22.7,22.8h44.7c12.6,0,22.7-10.2,22.7-22.7 V33.7C100.8,21.1,90.6,11,78.2,11z M91,78.4c0,7.1-5.8,12.8-12.8,12.8H33.5c-7.1,0-12.8-5.8-12.8-12.8V33.7 c0-7.1,5.8-12.8,12.8-12.8h44.7c7.1,0,12.8,5.8,12.8,12.8V78.4z"></path></svg></span>
          </a>
          <a class="u-social-url" target="_blank" href=""><span class="u-icon u-icon-circle u-social-icon u-social-linkedin u-icon-4"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 112 112" style="width: 200px; height: 200px;"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-b7db"></use></svg><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1" xml:space="preserve" class="u-svg-content" viewBox="0 0 112 112" x="0px" y="0px" id="svg-b7db"><path d="M33.8,96.8H14.5v-58h19.3V96.8z M24.1,30.9L24.1,30.9c-6.6,0-10.8-4.5-10.8-10.1c0-5.8,4.3-10.1,10.9-10.1 S34.9,15,35.1,20.8C35.1,26.4,30.8,30.9,24.1,30.9z M103.3,96.8H84.1v-31c0-7.8-2.7-13.1-9.8-13.1c-5.3,0-8.5,3.6-9.9,7.1 c-0.6,1.3-0.6,3-0.6,4.8V97H44.5c0,0,0.3-52.6,0-58h19.3v8.2c2.6-3.9,7.2-9.6,17.4-9.6c12.7,0,22.2,8.4,22.2,26.1V96.8z"></path></svg></span>
          </a>
        </div>
     </footer>-->
   
  </body>
   
</script>
</html>
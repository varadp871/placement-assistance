<%-- 
    Document   : stu
    Created on : 18 Nov, 2014, 9:44:48 AM
    Author     : Admin
--%>
<%--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Login</title>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />

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
          <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
          <link rel="stylesheet" type="text/css" href="./css/stylemenu.css">
    </head>
    <body>
        
                <div class='heading'>
                <img src= "./assets/logo2.png" id = 'logo' style="cursor: pointer;">
                <h1>Student Login | Vishwakarma Institute of Technology</h1>
                </div>
        <div class="navbar">
        
        <ul>
         <li><a href="placements.jsp"> Placements </a></li> 
         <li><a href="campus.jsp"> Campus </a></li> 
         <li><a href="contactUs.html"> Contact Us </a></li> 
  </ul>

</div>
     <br>
        <div class="container d-flex justify-content-center">
            
                <br>
                <div class='border-top border-4 px-3 py-5 shadow p-3 mb-5 bg-body rounded'>
                    <form  method="POST" action="StudentSignin">
                        <div id="login">

                            <div class="input-group mb-3">
                                <span class="input-group-text" id="inputGroup-sizing-default">GR No.</span>
                                <input type="number" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id = "user" name = "grno">
                            </div>
                            <br>
                           


                            <div class="input-group mb-3">
                                <span class="input-group-text" id="inputGroup-sizing-default">Password</span>
                                <input type="password" class="form-control" aria-label="Sizing example input" aria-describedby="inputGroup-sizing-default" id="pass" name = "password">
                            </div>


                            <br>
                            <br>
                        </div>
                       
                        <div>


                            <button class="btn btn-primary" id="loginbtn">Login</button>

                        </div>
                    </form>
                </div>
                
            </div>
     
                    
                </div>
          

        <br>
   
       <div>&nbsp;</div>
       <div>&nbsp;</div>
       
<div>
<div>
<b>Contact:</b>
<p> 
    Vishwakarma Institute of Technology <br>
    Savitribai Phule Pune University <br>
</p>
</div>
 <div>
<p> 
                                                &copy; 2021 &nbsp; Vishwakarma Institute of Technology
                                        </p>

</div>
</div>
    </body>
    <script type="text/javascript">
  let logo = document.getElementById("logo");
  logo.addEventListener('click', ()=>{
    location.href = "index.jsp";
  })
</script>
</html>
--%>
<!DOCTYPE html>
<html>
    <head>
        <link
            href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css"
            rel="stylesheet"
            />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
        <title>Student Login</title>
        <style>
            * {
                box-sizing: border-box;
                color: blanchedalmond;
            }
            .myContainer {
                margin: auto;

                border-radius: 5px;
            }
            .myContainer:before {
                background-image: url("assets/laptop3.jpg");
                filter: blur(3px);
                -webkit-filter: blur(3px);
                width: 100%;
                height: 100%;
                background-size: cover;
                background-color: blue;
                -webkit-background-size: cover;
                background-repeat: no-repeat;
                content: "";
                position: fixed;
                z-index: -1;
                display: block;
                background-position: center;
            }

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
        <div class="myContainer overflow-hidden">
            <header class="text-grey-700 body-font " style="margin-bottom: -50px;">
                <div
                    class="container mx-auto flex flex-wrap p-5 flex-col md:flex-row items-center">
                    <a
                        class="flex title-font font-medium items-center text-gray-900 mb-4 md:mb-0"
                        >
                        <svg
                            xmlns="http://www.w3.org/2000/svg"
                            fill="none"
                            stroke="currentColor"
                            stroke-linecap="round"
                            stroke-linejoin="round"
                            stroke-width="2"
                            class="w-10 h-10 text-white p-2 bg-teal-500 rounded-full"
                            viewBox="0 0 24 24"
                            >
                        <path
                            d="M12 2L2 7l10 5 10-5-10-5zM2 17l10 5 10-5M2 12l10 5 10-5"
                            ></path>
                        </svg>
                        <span class="ml-3 text-xl">Student Login</span>
                    </a>
                    <nav
                        class="md:ml-auto flex flex-wrap items-center text-base justify-center"

                        >
                        <a href="index.jsp" class="mr-5 hover:text-gray-900" style="text-decoration: none; color: beige">Home</a>
                        <a href="AboutUs.jsp" class="mr-5 hover:text-gray-900" style="text-decoration: none; color: beige">About Us</a>
                    </nav>
                </div>
            </header>
            <hr />
            <div
                class="min-h-screen flex items-center justify-center bg-gray-50 px-4 sm:px-6 lg:px-8"
                style="margin: -100px;"
                >
                <div class="max-w-md w-full border-4 px-3 py-5 shadow-2xl p-3 mb-5 rounded border-transparent border-opacity-100">
                    <div>
                        <h2
                            class="mt-6 text-center text-3xl leading-9 font-extrabold text-beige-900"
                            >
                            Student Sign-in.
                        </h2>
                    </div>
                    <form class="mt-8" action="StudentSignin" method="POST">
                        <!--<input type="hidden" name="remember" value="true" />-->
                        <div class="rounded-md shadow-sm">
                            <div>
                                <input
                                    aria-label="grno"
                                    name="grno"
                                    type="number"
                                    required
                                    class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-t-md focus:outline-none focus:shadow-outline-blue focus:border-blue-300 focus:z-10 sm:text-sm sm:leading-5"
                                    placeholder="GR No."
                                    />
                            </div>
                            <br>


                            <div class="-mt-px">
                                <input
                                    aria-label="Password"
                                    name="password"
                                    type="password"
                                    required
                                    class="appearance-none rounded-none relative block w-full px-3 py-2 border border-gray-300 placeholder-gray-500 text-gray-900 rounded-b-md focus:outline-none focus:shadow-outline-blue focus:border-blue-300 focus:z-10 sm:text-sm sm:leading-5"
                                    placeholder="Password"
                                    />
                            </div>
                        </div>



                        <div class="mt-6">
                            <button
                                type="submit"
                                class="group relative w-full flex justify-center py-2 px-4 border border-transparent text-sm leading-5 font-medium rounded-md text-white bg-indigo-600 hover:bg-indigo-500 focus:outline-none focus:border-indigo-700 focus:shadow-outline-indigo active:bg-indigo-700 transition duration-150 ease-in-out"
                                >
                                <span class="absolute left-0 inset-y-0 flex items-center pl-3">
                                    <svg
                                        class="h-5 w-5 text-indigo-500 group-hover:text-indigo-400 transition ease-in-out duration-150"
                                        fill="currentColor"
                                        viewBox="0 0 20 20"
                                        >
                                    <path
                                        fill-rule="evenodd"
                                        d="M5 9V7a5 5 0 0110 0v2a2 2 0 012 2v5a2 2 0 01-2 2H5a2 2 0 01-2-2v-5a2 2 0 012-2zm8-2v2H7V7a3 3 0 016 0z"
                                        clip-rule="evenodd"
                                        />
                                    </svg>
                                </span>
                                Sign in
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
>
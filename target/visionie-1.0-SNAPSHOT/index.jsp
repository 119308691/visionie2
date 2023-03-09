<%-- 
  REference:	https://startbootstrap.com/previews/modern-business
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.patient"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>VisionIreland Homepage</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body class="d-flex flex-column h-100">
        
            <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-light style="background-color: #006355;">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.jsp">    <img src="images/visionireland.png" alt="..." height="78"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                         
                              <li class="nav-item"><a class="nav-link" href="adminHome.jsp" style="color:white">Admin Portal</a></li>
                               <li class="nav-item"><a class="nav-link" href="opticianLogin.jsp" style="color:white">Optician Portal</a></li>
                         <li class="nav-item"><a class="nav-link" href="information.jsp" style="color:white">FAQ</a></li>
                             <!--    adding navbar headings and setting links 
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color:white">Apply</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownBlog"> -->
                                   
                                   
                                   
                                </ul>
                            
                            
                      
                    </div>
                </div>
            </nav>
             <section class="py-5">
                <div class="container px-5 my-2">
<div class="card" style="height:20rem;">
<!--cards -->
  <div class="card-body">
      <h3 class="card-title" style="color:black">Welcome to HSE Community Opthalmic Services Scheme</h3>
    <br>
    
    <p class="card-text" style="color:black">By creating an account you can apply to the scheme online. </p>
    <p class="card-text" style="color:black">If you need help please look at our <b>Frequently Asked Questions.</b></p>
    <br>
    <!-- create account and login buttons -->
    <a href="patient.jsp" class="btn" style="background-color:#006355; color:white"><i class="fa fa-user"></i> Create Account</a>
    <a href="login.jsp" class="btn" style="background-color:#006355; color:white"   ><i class="fa fa-sign-in "></i> Login</a>
    
     
  
    
  </div>
</div>
          </div>
         
             </section>
            <!-- information section-->
            <section class="py-0">
                <div class="container px-5 my-5">
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                         
                        </div>
                    </div>
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5">
                            <div class="card h-30 shadow border-0">
                              
                                <div class="card-body p-4">
                                    <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">What do I need to start?</h5></a>
                                    <ol>
  <li>Your e-mail address</li>
  <li>Your PPS number</li>
  <li>Your date of birth</li>
                                    </ol> 
                                   
                                 
                                </div>
                              
                            </div>
                        </div>
                        <div class="col-lg-4 mb-5">
                              <div class="card h-30 shadow border-0">
                              
                                <div class="card-body p-4">
                                    <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Who can register?</h5></a>
                                    <p> Anybody who is 'ordinarily resident' in the Republic of Ireland may be eligible to apply for the available schemes. </p>
                                 
                                </div>
                              
                            </div>
                        </div>
                        
                          <div class="col-lg-4 mb-5">
                              <div class="card h-30 shadow border-0">
                              
                                <div class="card-body p-4">
                                    <a class="text-decoration-none link-dark stretched-link" href="#!"><h5 class="card-title mb-3">Who can register?</h5></a>
                                    <p> Anybody who is 'ordinarily resident' in the Republic of Ireland may be eligible to apply for one or more of the available schemes. </p>
                                 
                                </div>
                              
                            </div>
                        </div>
                        
                    </div>
                </div>
            
        <!-- Footer-->
        <footer class="bg-light py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-black">Copyright &copy; Vision Ireland 2022</div></div>
                    <div class="col-auto">
                        <a class="link-dark small" href="#!">Privacy</a>
                        <span class="text-black mx-1">&middot;</span>
                        <a class="link-dark small" href="#!">Terms</a>
                        <span class="text-black mx-1">&middot;</span>
                        <a class="link-dark small" href="#!">Contact</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>

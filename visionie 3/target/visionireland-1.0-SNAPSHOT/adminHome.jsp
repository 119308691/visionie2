<%-- 
   references: 

1. https://startbootstrap.com/previews/modern-business
2.https://startbootstrap.com/template/heroic-features
--%>
<%@page import="model.application"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home</title>
         <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!--bootstrap & jquery-->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!------ applying stylesheets ---------->
 <link href="application.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
         <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/admin.css" rel="stylesheet" />
<!--specifiying external script file -->
<script src="js/app.js"></script>


<!--inline css for button and navbar-->
<style>
.button {
  background-color: #006355; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {width: 250px;}
.button1 {border-radius: 4px;}

.navbar  {
    color:white;
}

</style>
    </head>
    <body>
            <!-- Creating navbar-->
            <nav class="navbar navbar-expand-lg navbar-light" style="background-color: #006355;">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.jsp">    <img src="images/visionireland.png" alt="..." height="78"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent" >
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                            <!-- adding navbar headings and setting links -->
                            <li class="nav-item"><a class="nav-link"  style="color:white" href="index.jsp">Home</a></li>
                            <li class="nav-item"><a class="nav-link" style="color:white" href="#">Account</a></li>
                           
                            <li class="nav-item"><a class="nav-link" style="color:white "href="information.jsp">FAQ</a></li>
                           
                                </ul>
                            
                        
                    </div>
                </div>
            </nav>
            <br>
        
        <!--creating container-->
        <div class="container">
<div id="accordion">
    <div class="row">
        <div class="col-lg-12">
            <div class="text-center">
                <!-- adding headers -->
                <h3 style="color: #006355;">HSE Community Opthalmic Services Scheme </h3>
                <h4 style="color: #0048A8;"> Administrator Portal</h4>
            </div>
        </div>
    </div>
    <br>
    <div class="card card-default">
       
        <div class="panel-body inf-content">
   
         	
  
                  <br>
                 <div class="container">
                    <div class="row">
                  
                        
                        
                        
                         <!-- Page Features-->
                <div class="row gx-lg-5">
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature  bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #0048A8;"><i class="bi bi-card-text"></i></div>
                               
                                <a href="Application?action=listApplications"> <h2 class="fs-4 fw-bold" style="color: black">View Applications</h2></a>
                                <p class="mb-0">View submitted Patient Applications. Here you can edit, update and delete applications.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature  bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #0048A8;"><i class="bi bi-card-checklist"></i></div>
                                
                                <a href="submitClaim?action=listClaims"> <h2 class="fs-4 fw-bold" style="color: black">View Claims</h2></a>
                                
                                <p class="mb-0">View submitted Optician Claims for Payment. Here you can edit, update and delete claims.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #0048A8;"><i class="bi bi-eyeglasses"></i></div>
                               <a href="Optician?action=listOpticians"> <h2 class="fs-4 fw-bold" style="color: black">View Opticians</h2></a>
                                <p class="mb-0">View participating Opticians. Here you can edit, update and delete Optician information.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature  bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #0048A8;"><i class="bi bi-question-circle"></i></div>
                                
                                 <a href="Query?action=listQuerys"> <h2 class="fs-4 fw-bold" style="color: black">View Queries</h2></a>
                  
                                <p class="mb-0">View Queries submitted by Opticians and Patients. Here you can view and respond to queries.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature  bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #0048A8;"><i class="bi bi-clipboard-check"></i></div>
                                <h2 class="fs-4 fw-bold">View Criteria</h2>
                                <p class="mb-0">View Application Criteria. Here you can view, edit and update the scheme criteria. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature  bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #0048A8;"><i class="bi bi-people"></i></div>
                                <h2 class="fs-4 fw-bold">View Admin</h2>
                                <p class="mb-0">View admin. Here you can view, edit and update admin details.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        
                        
                        
                      
                            </div> 
                            
                            </div>
        </div>
    

                        </form> 
                    </div>

        </div>
                        
			
       
         
                
                
                
                
           



<br><!-- -->
<br>
<br>
<!-- footer-->
      <footer class="bg-light py-4 mt-auto">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-black">Copyright &copy; Vision Ireland 2022</div></div>
                    <div class="col-auto">
                        <a class="link-light small text-black" href="#!">Privacy</a>
                        <span class="text-black mx-1">&middot;</span>
                        <a class="link-light small text-black" href="#!">Terms</a>
                        <span class="text-black mx-1">&middot;</span>
                        <a class="link-light small text-black" href="#!">Contact</a>
                    </div>
                </div>
            </div>
        </footer>   
   

   <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
  
    
    
    
    </body>
</html>

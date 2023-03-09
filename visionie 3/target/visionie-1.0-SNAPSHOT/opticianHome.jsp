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
        <title>Optician Home</title>
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
                              <li class="nav-item active">
                            <c:if test="${empty SKUSER.name}">
                                <a class="nav-link" href="./opticianLogin.jsp" style="color:white;">Login
                                    <span class="sr-only">(current)</span>
                                </a>
                            </c:if>
                            <c:if test="${not empty SKUSER.name}">
                                <a class="nav-link" href="./opticianHome.jsp" style="color:white;">Hi ${SKUSER.name}
                                    <span class="sr-only">(current)</span>
                                </a>
                            </c:if>
                        </li>
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
                <h4 style="color: #FF9E00;"> Optician Portal</h4>
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
                                <div class="feature  bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #FF9E00;"><i class="bi bi-clipboard-check"></i></div>
                               
                                <a href="Application?action=listApplications1"> <h2 class="fs-4 fw-bold" style="color: black">View Patient Eligibility</h2></a>
                                <p class="mb-0">Patient Eligibility. Here you can view patient eligibility.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature  bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #FF9E00;"><i class="bi bi-card-checklist"></i></div>
                               <a href="submitClaim?action=listClaims"> <h2 class="fs-4 fw-bold" style="color: black">View Claims</h2></a>
                                <p class="mb-0">View submitted Claims for Payment. Here you can view submitted claims for payment and results.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">  
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #FF9E00;"><i class="bi bi-wallet-fill"></i></div>
                               
                                
                                <a href="claim.jsp"> <h2 class="fs-4 fw-bold" style="color: black">Submit Claim</h2></a>
                             
                                <p class="mb-0">Submit Claim. Here you can submit claim for payment forms for treatments provided to patients.</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature  bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #FF9E00;"><i class="bi bi-question-circle"></i></div>
                                <a href="optQuery?action=listQuerys"> <h2 class="fs-4 fw-bold" style="color: black">View Queries</h2></a>
                               <p class="mb-0">View Query. Here you can view previously submitted queries. </p>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature  bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #FF9E00;"><i class="bi bi-card-text "></i></div>
                        <a href="query1.jsp"> <h2 class="fs-4 fw-bold" style="color: black">Submit Query</h2></a>
                                <p class="mb-0">Submit Query. Here you can submit a query to HSE administrators. </p>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-xxl-4 mb-5">
                        <div class="card bg-light border-0 h-100">
                            <div class="card-body text-center p-4 p-lg-5 pt-0 pt-lg-0">
                                <div class="feature  bg-gradient text-white rounded-3 mb-4 mt-n4" style="background-color: #FF9E00;"><i class="bi bi-people"></i></div>
                                <a href="Treatment?action=listTreatments1"> <h2 class="fs-4 fw-bold" style="color: black">View Treatment History</h2></a>
                        
                                <p class="mb-0">View Treatment History. Here you can view and update Treatment History for patients.</p>
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
<footer class="bg py-4 mt-auto" style="background-color: #006355;">
            <div class="container px-5">
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; Vision Ireland 2022</div></div>
                    <div class="col-auto">
                        <a class="link-light small text-white" href="#!">Privacy</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small text-white" href="#!">Terms</a>
                        <span class="text-white mx-1">&middot;</span>
                        <a class="link-light small text-white" href="#!">Contact</a>
                    </div>
                </div>
            </div>
        </footer>   
   

   <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery.mask/1.14.15/jquery.mask.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
  
    
    
    
    </body>
</html>

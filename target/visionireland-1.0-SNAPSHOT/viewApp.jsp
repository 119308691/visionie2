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
        <title>Edit</title>
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
                <h4 style="color: #006355;"> Patient Portal</h4>
            </div>
        </div>
    </div>
    <br>
    <div class="card card-default">
       
        <div class="panel-body inf-content">
   
         	
  
                  <br>
                 <div class="container">
                    <div class="row">
                  
                        
                        
                        
                    <h4 class="my-4">View Application Details</h4>

 <!-- Adapted from Emerson, B. (2022) IS3312, Web Application Development [Source code].
Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code]. -->

                    <div class="row">
                        <!-- calling actions from the servlet -->
                        <!-- creating form-->
                        
                      

                        <form action="" method="POST">
                            <input id="id" name="id" type="hidden" value="${oldApplication.id}">
                             <div class="form-group row">
                                <label for="date" class="col-4 col-form-label">Date</label> 
                                <div class="col-8">
                                    <input id="date" name="date" type="text" value="${oldApplication.date}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                             <div class="form-group row">
                                <label for="fName" class="col-4 col-form-label">First Name</label> 
                                <div class="col-8">
                                    <input id="firstName" name="fName" type="text" value="${oldApplication.firstName}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                             <div class="form-group row">
                                <label for="lName" class="col-4 col-form-label">Last Name</label> 
                                <div class="col-8">
                                    <input id="lastName" name="lName" type="text" value="${oldApplication.lastName}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                             <div class="form-group row">
                                <label for="DOB" class="col-4 col-form-label">DOB</label> 
                                <div class="col-8">
                                    <input id="DOB" name="DOB" type="text" value="${oldApplication.DOB}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                            
                            
                            
                            
                            
                            <div class="form-group row">
                                <label for="PPSN" class="col-4 col-form-label">PPSN</label> 
                                <div class="col-8">
                                    <input id="PPSN" name="PPSN" type="text" value="${oldApplication.PPSN}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="medNo" class="col-4 col-form-label">Medical Card No.</label> 
                                <div class="col-8">
                                    <input id="medNo" name="medNo" type="text" value="${oldApplication.medNo}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="expiry" class="col-4 col-form-label">Expiry</label> 
                                <div class="col-8">
                                    <input id="expiry" name="expiry" type="text" value="${oldApplication.expiry}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="phone" class="col-4 col-form-label">Phone No:</label> 
                                <div class="col-8">
                                    <input id="phone" name="phone" type="text" value="${oldApplication.phone}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                                
                                  <div class="form-group row">
                                <label for="address" class="col-4 col-form-label">Address</label> 
                                <div class="col-8">
                                    <input id="address" name="address" type="text" value="${oldApplication.address}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="examination" class="col-4 col-form-label">Eye Examination Required?</label> 
                                <div class="col-8">
                                    <input id="examination" name="examination" type="text" value="${oldApplication.examination}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                                
                                <div class="form-group row">
                                <label for="address" class="col-4 col-form-label">Address</label> 
                                <div class="col-8">
                                    <input id="address" name="address" type="text" value="${oldApplication.address}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="examdate" class="col-4 col-form-label">Date of last eye examination?</label> 
                                <div class="col-8">
                                    <input id="examdate" name="examdate" type="text" value="${oldApplication.examdate}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                                
                            <div class="form-group row">
                                <label for="optician" class="col-4 col-form-label">Optician?</label> 
                                <div class="col-8">
                                    <input id="optician" name="optician" type="text" value="${oldApplication.optician}" class="form-control" required="required" readonly>
                                </div>
                            </div>
                                
                                
                                 <div class="form-group row">
                                <label for="status" class="col-4 col-form-label">Status</label> 
                                <div class="col-8">
                          <input id="status" name="status" type="text" value="${oldApplication.status}" class="form-control" required="required" readonly> 
                                </div>
                            </div>
                             </form> 
                                
                            <div class="form-group row">
                                <div class="offset-4 col-8">
                                   <button class="btn" style="background-color:#006355; color:white" onclick="history.back()">Go Back</button>	
                                </div>
                            </div>
                       





                        
			
       
            
            </div>
            </div>
        </div>
                        
                      
                            </div> 
                            
                            </div>
        </div>
        </div>

                       
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

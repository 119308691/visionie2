<%-- 

   references :

	https://startbootstrap.com/previews/modern-business
--%>

<%@page import="model.opticianclaim"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Claim</title>
         <!--bootstrap & jquery-->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ applying stylesheets ---------->
 <link href="application.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
         <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
<link href="css/styles.css" rel="stylesheet" />
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
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        
        
             <!--creating container-->
        <div class="container">
<div id="accordion">
    <div class="row">
        <div class="col-lg-12">
            <div class="text-center">
                <!-- adding headers -->
                <h3 style="color: white;">HSE Community Opthalmic Services Scheme </h3>
                <h4 style="color: white;"> Optical Examiner/Dispenser Claim for Payment</h4>
            </div>
        </div>
    </div>
    <br>
    <div class="card card-default">
        <div class="card-header">
           
               
                  <h3 style="color:Black;">CLAIM FOR PAYMENT</h3>
                   
               
                  
        </div>
        <div class="panel-body inf-content">
   
         	
  
                  <br>
                 <div class="container">
                    <div class="row">
                         <!-- Adapted from Emerson, B. (2022) IS3312, Web Application Development [Source code].
Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code]. -->
                         
                    <!-- creating url as string -->
                        <c:url value="/submitClaim" var="insertClaimUrl">
                             <!-- adding paramater -->
                                        <c:param name="action" value="insertClaim"/>
                                    </c:url>
 <!-- setting form submission to url -->
                        <form action="${insertClaimUrl}" method="POST">
                            
                              <!-- creating form -->
                             <div class="form-group row">
                                 
                                <label for="date" class="col-4 col-form-label">  Date</label> 
                                <div class="col-8">
                                     <!-- setting input to variable from paramater -->
                                    <input id="date" name="date" type="text" class="form-control" value="datestring" readonly>
                                       <!-- script for getting todays date -->
                                    <script>
                                        //Source: https://stackoverflow.com/questions/35275235/displaying-current-date-in-a-text-box-javascript/41037447
                                        var todaydate = new Date();
 var day = todaydate.getDate();
 var month = todaydate.getMonth() + 1;
 var year = todaydate.getFullYear();
 var datestring = day + "/" + month + "/" + year;
 window.onload = function(){
 document.getElementById("date").value = datestring;
 };
 </script>
                                    
                                    
                                    
                                    
                                    
                                    
                                     <!-- form continued with id's being set to paramater variables  -->
                                </div>
                            </div>
                            
                               <div class="form-group row">
                                <label for="PPSN" class="col-4 col-form-label">PPSN</label> 
                                <div class="col-8">
                                    <input id="PPSN" name="PPSN" type="text" class="form-control" required="required">
                                </div>
                            </div>
                              
                              
                              
                            <div class="form-group row">
                                <label for="prescription" class="col-4 col-form-label">Complete Prescription</label> 
                                <div class="col-8">
                                    <input id="prescription" name="prescription" type="text" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label class="col-4">Were glasses required?</label> 
                                <div class="col-8">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="glassesRequired" id="glassesRequired_0" type="radio" class="custom-control-input" value="YES"> 
                                        <label for="glassesRequired_0" class="custom-control-label">YES</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="glassesRequired" id="glassesRequired_1" type="radio" class="custom-control-input" value="NO"> 
                                        <label for="glassesRequired_1" class="custom-control-label">NO</label>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group row">
                                <label class="col-4">Was there a change in lenses?</label> 
                                <div class="col-8">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="lenses" id="lenses_0" type="radio" class="custom-control-input" value="YES"> 
                                        <label for="lenses_0" class="custom-control-label">YES</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="lenses" id="lenses_1" type="radio" class="custom-control-input" value="NO"> 
                                        <label for="lenses_1" class="custom-control-label">NO</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="comments" class="col-4 col-form-label">Comments</label> 
                                <div class="col-8">
                                    <input id="comments" name="comments" type="text" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="details" class="col-4 col-form-label">Details of Appliance(s) Supplied</label> 
                                <div class="col-8">
                                    <input type="text" id="details" name="details" class="form-control" required="required">
                                </div>
                            </div>
                           
                            
                            <div class="form-group row">
                                <label for="examiner" class="col-4 col-form-label">Optical Examiner/Dispenser</label> 
                                <div class="col-8">
                                    <input id="examiner" name="examiner" type="text" class="form-control" required="required">
                                </div>
                            </div> 
                            <div class="form-group row">
                                <label for="optician_ID" class="col-4 col-form-label">Optician ID.</label> 
                                <div class="col-8">
                                    <input id="optician_ID" name="optician_ID" type="number" class="form-control" required="required">
                                </div>
                            </div>
                        
                                  
                    </div>
                            <div class="form-group row">
                                <div class="offset-4 col-8">
                                    <button name="submit" type="submit" class="btn" style="background-color:#006355; color:white">Submit</button>
                               <button class="btn" style="background-color:#006355; color:white" onclick="history.back()">Cancel</button>	
                                </div><!-- M -->
                                </div>
                            </div>
        </div>
    

                        </form> 
                    </div>

        </div>
                        
			
        </div>
         
                
                
                
                
           



<br><!-- -->
<br>
<br>
<!--footer-->
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

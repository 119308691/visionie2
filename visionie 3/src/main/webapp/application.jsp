<%-- 
   references: 


4. https://startbootstrap.com/previews/modern-business
--%>
<%@page import="model.application"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Application</title>
        
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
<style>
.tooltip {
  position: relative;
  display: inline-block;
  border-bottom: 1px dotted black;
}

.tooltip .tooltiptext {
  visibility: hidden;
  width: 120px;
  background-color: black;
  color: #fff;
  text-align: center;
  border-radius: 6px;
  padding: 5px 0;

  /* Position the tooltip */
  position: absolute;
  z-index: 1;
}

.tooltip:hover .tooltiptext {
  visibility: visible;
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
                            <c:if test="${empty SKUSER.firstName}">
                                <a class="nav-link" href="./login.jsp" style="color:white;">Login
                                    <span class="sr-only">(current)</span>
                                </a>
                            </c:if>
                            <c:if test="${not empty SKUSER.firstName}">
                                <a class="nav-link" href="./patientHome.jsp" style="color:white;">Hi ${SKUSER.firstName}
                                    <span class="sr-only">(current)</span>
                                </a>
                            </c:if>
                        </li>
                            <li class="nav-item"><a class="nav-link"  style="color:white" href="index.jsp">Home</a></li>
                         
                           
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
                <h4 style="color: white;"> This application applies to all adult medical card holders over 16 years and Health Amendment Act Cardholders</h4>
            </div>
        </div>
    </div>
    <br>
    <div class="card card-default">
        <div class="card-header">
           
               
                  <h3 style="color:Black;">APPLICATION</h3>
                   
               
                  
        </div>
        <div class="panel-body inf-content">
   
         	
  
                  <br>
                 <div class="container">
                    <div class="row">
                  <!-- Adapted from Emerson, B. (2022) IS3312, Web Application Development [Source code].
Findi, T. (2021) “IS3312 – Web Development Assignment (Kitstop Version 1.0) [Source code]. -->
                         <!-- creating url as string -->
                        <c:url value="/Application" var="insertApplicationUrl">
                            <!-- adding paramater -->
                                        <c:param name="action" value="insertApplication"/>
                                    </c:url>
                            <!-- setting form submission to url -->
                        <form action="${insertApplicationUrl}" method="POST">
                            <!-- creating form -->
                             <div class="form-group row">
                                <label for="date" class="col-4 col-form-label"> Application Date</label> 
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
                                <label for="firstName" class="col-4 col-form-label">First Name</label> 
                                <div class="col-8">
                                    <input id="firstName" name="firstName" type="text" class="form-control" value="${SKUSER.firstName}" required="required" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="lastName" class="col-4 col-form-label">Last Name</label> 
                                <div class="col-8">
                                    <input id="lastName" name="lastName" type="text" class="form-control" value="${SKUSER.lastName}" required="required" readonly>
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="DOB" class="col-4 col-form-label">DOB</label> 
                                <div class="col-8">
                                    <input type="text" id="DOB" name="DOB" class="form-control" value="${SKUSER.DOB}" required="required" readonly >
                                </div>
                            </div>
                           
                            
                            <div class="form-group row">
                                <label for="PPSN" class="col-4 col-form-label">PPS No.</label> 
                                <div class="col-8">
                                    <input id="PPSN" name="PPSN" type="text" class="form-control" value="${SKUSER.PPSN}" required="required" readonly>
                                </div>
                            </div><!-- comment -->
                            <div class="form-group row">
                                <label for="medNo" class="col-4 col-form-label">Medical Card No.</label> 
                                <div class="col-8">
                                    <input id="medNo" name="medNo" type="text" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="expiry" class="col-4 col-form-label">Expiry Date</label> 
                                <div class="col-8">
                                    <input type="month" id="expiry" name="expiry"  class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="phone" class="col-4 col-form-label">Phone Number</label> 
                                <div class="col-8">
                                    <input type="tel" id="phone" name="phone" pattern="[0-9]{3}[0-9]{3}[0-9]{4}" placeholder="085-123-4567" class="form-control" required="required">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="address" class="col-4 col-form-label">Address</label> 
                                <div class="col-8">
                                    <input id="address" name="address" type="text" class="form-control" required="required">
                                </div>
                            </div><!-- comment -->
                            
                            <div class="form-group row">
                                <label class="col-4">Do you wish to have an eye examination?</label> 
                                <div class="col-8">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="examination" id="examination_0" type="radio" class="custom-control-input" value="YES" "> 
                                        <label for="examination_0" class="custom-control-label">YES</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="examination" id="examination_1" type="radio" class="custom-control-input" value="NO" "> 
                                        <label for="examination_1" class="custom-control-label">NO</label>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="form-group row ">
                                <label class="col-4">Have you had an eye exam in the last 2 years?</label> 
                                <div class="col-8">
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="years" id="years" type="radio" class="custom-control-input" value="YES" onclick="result(); myFunction();"> 
                                        <label for="years" class="custom-control-label">YES</label>
                                    </div>
                                    <div class="custom-control custom-radio custom-control-inline">
                                        <input name="years" id="years1" type="radio" class="custom-control-input" value="NO" onclick="result(); myFunction();"> 
                                        <label for="years1" class="custom-control-label">NO</label>
                                    </div>
                                </div>
                            </div>
                                 <div class="form-group row" id="dateexam" >
                                <label for="examdate" class="col-4 col-form-label">When did you last have an eye examination?</label> 
                                <div class="col-8">
                                    <input id="examdate" name="examdate" type="date" min="2021-03-14" class="form-control" >
                                </div>
                            </div><!-- comment -->
                            
                            
                            
                            
                             <div class="form-group row">
                                 <div class="col-12">
                                 <label for="optician">From which member do on the HSE panel do you wish to receive your examination/optical appliance?:</label>
                                  
                           
                                 <!-- creating drop down list -->
 
                    <select name="optician" id="optician">
       <optgroup label="Cork">
    <option value="Mahon Point Specsavers">Mahon Point Specsavers</option>
    <option value="Wyley McGrath Opticians">Wyley McGrath Opticians</option>
    <option value="Opticians CA Murray">Opticians CA Murray</option>
    <option value="Opticians Stack O'Brien">Opticians Stack O'Brien</option>
     <option value="Ms Jill Farrell F.A.O.I.">Ms Jill Farrell F.A.O.I.</option>
    <option value="Mallow Opticians Ltd">Mallow Opticians Ltd</option>
    <option value="Siobhan Corkery F.A.O.I.">Siobhan Corkery F.A.O.I.</option>
    <option value="Tom Thornhill">Tom Thornhill</option><!-- comment -->
     <option value="Forristal Opticians">Forristal Opticians</option>
    <option value="Flynn's Opticians">Flynn's Opticians</option>
    <option value="Douglas Eyecare Ltd">Douglas Eyecare</option>
    <option value="PJ Crowley">PJ Crowley</option>
     <option value="Kennedy’s Opticians">Kennedy’s Opticians</option>
    <option value="A O'Connor Opticians">A O'Connor Opticians</option>
    <option value="Kenneally Opticians">Kenneally Opticians</option>
    <option value="Mr Gerald O'Connor">Mr Gerald O'Connor</option>
     <option value="TL Egan and Co">TL Egan and Co</option>
    <option value="Vision Express">Vision Express</option>
    <option value="Optical Express">Optical Express</option>
    <option value="Wilton Specsavers">Wilton Specsavers</option>
     <option value="Crowley’s Opticians">Crowley’s Opticians</option>
   </optgroup>
                            
                    </select>
                                 </div>
                                
                            
                                 </div>
                            
                            <div class="form-group row" hidden readonly>
                                <label for="status" class="col-4 col-form-label">Status</label> 
                                <div class="col-8">
                                    <input id="status" name="status" type="text" class="form-control" >
                                </div>
                            </div><!-- comment -->
                                </div>
                            </div> 
                            <div class="form-group row">
                                <div class="offset-4 col-8">
                                    <!-- button to submit form -->
                                    <button onclick="result1()" name="submit" type="submit" class="btn" style="background-color:#006355; color:white">Submit</button>
                                    <button class="btn" style="background-color:#006355; color:white" onclick="history.back()">Cancel</button>
                                </div><!-- M -->
                                </div>
                            </div>
        </div>
    

                        </form> 
                                
                                <script>
function result() {
    
var a = "APPROVED";
var d = "DENIED";
var x = document.getElementById("examination_0").value;
var y = document.getElementById("status").value;


if(document.getElementById('years').checked == true) {   

  var p = document.getElementById("status").value = d ;
  } else {  
         document.getElementById("status").value = a;
}  
 
}
  
  </script>
  
  <script>
      function result1() {
     var o;
     
     if(document.getElementById('years').checked == true) {   

 localStorage.setItem('o', 'DENIED');
  } else {  
         localStorage.setItem('o', 'APPROVED');
} 
      }
     
 
</script>
<script>
function myFunction() {
  var x = document.getElementById("dateexam");
  if (x.style.display === "block") {
    x.style.display = "none";
  } else {
    x.style.display = "block";
  }
}
</script>
  
                                 
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

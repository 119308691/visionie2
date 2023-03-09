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
        <title>Patient Create Account</title>
        
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
 
        
        
        
        
        <div class="panel-body inf-content">
   
         	
  
                  <br>
                  
                  
                  
                  
                  <div class="container h-100">
    		<div class="row h-100">
                
				<div class="col-sm-10 col-md-8 col-lg-6 mx-auto d-table h-100">
					<div class="d-table-cell align-middle">

						<div class="text-center mt-4">
							<h1 class="h2" style="color:white">Create Account </h1>
							
						</div>

						<div class="card">
							<div class="card-body">
								<div class="m-sm-4">
                                                                    <c:url value="/Patient" var="insertPatientUrl">
                            <!-- adding paramater -->
                                        <c:param name="action" value="insertPatient"/>
                                    </c:url>
									 <form action="${insertPatientUrl}" method="POST">
										<div class="form-group row">
                                <label for="firstName" class="col-4 col-form-label">First Name</label> 
                                <div class="col-8">
                                    <input id="firstName" name="firstName" type="text" class="form-control"  required="required" >
                                </div>
                            </div>
                                                                                <div class="form-group row">
                                <label for="lastName" class="col-4 col-form-label">Last Name</label> 
                                <div class="col-8">
                                    <input id="lastName" name="lastName" type="text" class="form-control"  required="required" >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="DOB" class="col-4 col-form-label">DOB</label> 
                                <div class="col-8">
                                    <input type="text" id="DOB" name="DOB" class="form-control"  required="required"  >
                                </div>
                            </div>
                           
                            
                            <div class="form-group row">
                                <label for="PPSN" class="col-4 col-form-label">PPS No.</label> 
                                <div class="col-8">
                                    <input id="PPSN" name="PPSN" type="text" class="form-control" required="required" >
                                </div>
                            </div><!-- comment -->
                            
                            <div class="form-group row">
                                <label for="email" class="col-4 col-form-label">Email</label> 
                                <div class="col-8">
                                    <input id="email" name="email" type="text" class="form-control" required="required" >
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="telephone" class="col-4 col-form-label">Telephone</label> 
                                <div class="col-8">
                                    <input type="text" id="telephone" name="telephone" class="form-control"  required="required"  >
                                </div>
                            </div>
                           
                            
                            <div class="form-group row">
                                <label for="password" class="col-4 col-form-label">Password</label> 
                                <div class="col-8">
                                    <input id="password" name="password" type="text" class="form-control"  required="required" >
                                </div>
                            </div><!-- comment -->
                            
										 <div class="form-group row">
                                <div class="offset-4 col-8">
                                    <!-- button to submit form -->
                                    <button  name="submit" type="submit" onclick="myFunction()" class="btn" style="background-color:#006355; color:white">Submit</button>
                                    <button class="btn" style="background-color:#006355; color:white" onclick="history.back()">Cancel</button>
                                </div><!-- M -->
                                </div>
									</form>
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
                        
		<script>
function myFunction() {
  alert("Your account has been created succesfully. Please Login to access your account portal.");
}
</script>

	
       
         
                
                
                
                
           



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

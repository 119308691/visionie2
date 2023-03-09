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
        <title>View Eligibility</title>
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

<script>
function printPage() {
  window.print();
}
</script>
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
                <h4 style="color: #006355;"> View Patient Eligibility</h4>
            </div>
        </div>
    </div>
    <br>
    <br><!-- comment -->
    <br>
    
    
    
    <div class="container">
    <div class="row">
        <div class="col-md-20 col-xl-40">
            <div class="card m-b-1000">
                <div class="card-body row">
                  
                    <div class="col-10 card-title align-self-center mb-10">
                           <input id="id" name="id" type="hidden" value="${oldApplication.id}">
                           <h7 style="color: #006355;">${oldApplication.date}</h7>
                           <br>
                           <br>
                           <h2>Treatments Benefits application has been ${oldApplication.status} </h2>
                      
                    </div>
                </div>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Treatments Benefits application for ${oldApplication.firstName} ${oldApplication.lastName} ${oldApplication.PPSN} has been ${oldApplication.status}</li>
                   
                </ul>
                <div class="card-body">
                    <div class="float-right btn-group btn-group-lg">
        
                        <a href="#" onclick="printPage()" style="background-color:#006355; color:white" class="btn tooltips" data-placement="top" data-toggle="tooltip" data-original-title="Print"><i class="fa fa-print"></i> </a>
                      
                    </div>
                    <ul class=" list-inline mb-0">
                         
                        <li class="list-inline-item"><a title="" style="color:#006355;" data-placement="top" data-toggle="tooltip" class="tooltips" href="Application?action=listApplications1" data-original-title="Back"><i class="fa fa-arrow-left"></i></a></li>
                        <li class="list-inline-item"><a title="" data-placement="top" data-toggle="tooltip" class="tooltips" style="color:#006355;" href="Application?action=listApplications1" data-original-title="">Back</a></li>
                    </ul>
                    
                </div>
            </div>
        </div>
    
            </div>
        </div>
                        
                      
                            </div> 
                            
                            </div>
       
                        
			
       
         <script>
                $(function () {
  $('[data-toggle="tooltip"]').tooltip()
})</script>
                
                
                
                
           



<br><!-- -->
<br>
 <br>
    <br><!-- comment -->
    <br>
<br>
<!-- footer-->
      <footer class="py-4 mt-auto" style="background-color:#006355; color:white">
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

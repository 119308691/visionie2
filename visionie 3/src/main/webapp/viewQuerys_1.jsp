<%-- 
   references: 

1. https://startbootstrap.com/previews/modern-business
2.https://startbootstrap.com/template/heroic-features
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.query"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> View Queries</title>
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
<style>
    #myInput {
  background-image: url('/images/searchicon.png'); /* Add a search icon to input */
  background-position: 10px 12px; /* Position the search icon */
  background-repeat: no-repeat; /* Do not repeat the icon image */
  width: 40%; /* Full-width */
  font-size: 16px; /* Increase font-size */
  padding: 12px 20px 12px 40px; /* Add some padding */
  border: 1px solid #ddd; /* Add a grey border */
  margin-bottom: 12px; /* Add some space below the input */
 

}
</style>
<style>
    #myInput1 {
  background-image: url('/images/searchicon.png'); /* Add a search icon to input */
  background-position: 10px 12px; /* Position the search icon */
  background-repeat: no-repeat; /* Do not repeat the icon image */
  width: 40%; /* Full-width */
  font-size: 16px; /* Increase font-size */
  padding: 12px 20px 12px 40px; /* Add some padding */
  border: 1px solid #ddd; /* Add a grey border */
  margin-bottom: 12px; /* Add some space below the input */
  
}
</style>
    </head>
    <body onload="myFunction1()">
        
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
                <h4 style="color: #006355;"> View Queries</h4>
            </div>
        </div>
    </div>
    <br>
    <div class="card card-default">
       
        <div class="panel-body inf-content">
   
         	
  
                  <br>
                  <div class="container" ">
                    <div class="row">
                  
                        
                        
                        
            
            <div class="table-responsive">
                <h5 style="color: black;"> ${SKUSER.PPSN} <b>-</b> ${SKUSER.firstName} ${SKUSER.lastName}</h5>
                            <br>
           
                            <input hidden type="text" id="myInput1" onkeyup="myFunction1()" placeholder="Search by PPSN" value="${SKUSER.PPSN}" readonly>
            <table id="results" class="table table-striped">
                            <thead style="background-color:#006355; color:white;">
                                <tr>
                                    <th scope="col">Query Id</th>
                                    <th scope="col">PPSN</th>
                                    <th scope="col">Status</th>
                                    
                                    <th scope="col">Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach items="${querys}" var="query">
                                    <c:url value="/Query" var="editQueryUrl">
                                        <c:param name="action" value="edit1"/>
                                        <c:param name="id" value="${query.id}"/>
                                    </c:url>
                                    
                                <tr>
                                    <td scope="row">${query.id}</th>
                                    <td>${query.PPSN}</td>
                                    <td>${query.status}</td>
                                 
                                
                                    <td><a href="${editQueryUrl}">View</a></td>
                                </tr>
                                </c:forEach>
                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                   
                                   
                                    
                                </tr>
                            </tbody>
                        </table>      
                                    
                                     <!--https://www.w3schools.com/howto/tryit.asp?filename=tryhow_js_filter_table
                Search function - js -->
                                     <script>
                                         
                                          $("td:contains('Completed')").css("color", "green");
                                         $("td:contains('null')").css("color", "orange");
                                          $("td:contains('Pending')").css("color", "orange");
                                          </script>
 <script>
function myFunction1() {
  // Declare variables 
  var input, filter, table, tr, td, i, txtValue;
  input = document.getElementById("myInput1");
  filter = input.value.toUpperCase();
  table = document.getElementById("results");
  tr = table.getElementsByTagName("tr");

  // Loop through all table rows, and hide those who don't match the search query
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      txtValue = td.textContent || td.innerText;
      if (txtValue.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    } 
  }
}
</script>  

            </div>
        
                        
                        
                      
                            </div> 
                            
                            </div>
        </div>
    

                        
                    </div>
                                    <br><!-- back  button -->
                                    <button class="btn" style="background-color:#006355; color:white" onclick="history.back()">Go Back</button>	
        </div>
        </div>
    
                        
			
       

  <br><!-- -->
<br>
<br>              
                
                
                
  <br><!-- -->
<br>
<br>         

<br><!-- -->
<br>
<br>

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

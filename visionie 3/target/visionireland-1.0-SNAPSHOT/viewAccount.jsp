<%-- 
   references: 

1. https://startbootstrap.com/previews/modern-business
2.https://startbootstrap.com/template/heroic-features
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.patient"%>

<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page import="model.application"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Applications</title>
         <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet" />
        <!--bootstrap & jquery-->
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!------ applying stylesheets ---------->
 <link href="application.css" rel="stylesheet" />
  <link href="css/account.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />
         <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
<link href="css/styles.css" rel="stylesheet" />
<link href="css/admin.css" rel="stylesheet" />
<!--specifiying external script file -->
<script src="js/app.js"></script>




    </head>
    <body >
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
                <h4 style="color: #006355;"> View Account</h4>
            </div>
        </div>
    </div>
    <br>
   
         	
  
                  <br>
  

    <div class="card overflow-hidden">
      <div class="row no-gutters row-bordered row-border-light">
        <div class="col-md-3 pt-0">
          <div class="list-group list-group-flush account-settings-links">
            <a class="list-group-item list-group-item-action " data-toggle="list" href="#account-general">General</a>
            <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-change-password">Change password</a>
            <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-info">Info</a>
          
            <a class="list-group-item list-group-item-action" data-toggle="list" href="#account-notifications">Notifications</a>
          </div>
        </div>
        <div class="col-md-9">
          <div class="tab-content">
            <div class="tab-pane fade active show" id="account-general">

              <hr class="border-light m-0">

              <div class="card-body">
                <div class="form-group">
                  <label class="form-label">First Name</label>
                  <input type="text" class="form-control mb-1" value="${SKUSER.firstName}" readonly>
                </div>
                <div class="form-group">
                  <label class="form-label">Last Name</label>
                  <input type="text" class="form-control" value="${SKUSER.lastName}" readonly>
                </div>
                <div class="form-group">
                  <label class="form-label">PPSN</label>
                  <input type="text" class="form-control mb-1" value="${SKUSER.PPSN}" readonly>
                 
                </div>
                <div class="form-group">
                  <label class="form-label">DOB</label>
                  <input type="text" class="form-control" value="${SKUSER.DOB}" readonly>
                </div>
                <div class="form-group">
                  <label class="form-label">EMAIL</label>
                  <input type="text" class="form-control" value="${SKUSER.email}" readonly>
                </div>
                 <div class="form-group">
                  <label class="form-label">TELEPHONE NO.</label>
                  <input type="text" class="form-control" value="${SKUSER.telephone}" readonly>
                </div>
                
                
                
                
                
                
              </div>

            </div>
            <div class="tab-pane fade" id="account-change-password">
              <div class="card-body pb-2">

                <div class="form-group">
                  <label class="form-label">Current password</label>
                  <input type="password" class="form-control">
                </div>

                <div class="form-group">
                  <label class="form-label">New password</label>
                  <input type="password" class="form-control">
                </div>

                <div class="form-group">
                  <label class="form-label">Repeat new password</label>
                  <input type="password" class="form-control">
                </div>

              </div>
            </div>
            <div class="tab-pane fade" id="account-info">
              <div class="card-body pb-2">

                <div class="form-group">
                  <label class="form-label">Bio</label>
                  <textarea class="form-control" rows="5">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris nunc arcu, dignissim sit amet sollicitudin iaculis, vehicula id urna. Sed luctus urna nunc. Donec fermentum, magna sit amet rutrum pretium, turpis dolor molestie diam, ut lacinia diam risus eleifend sapien. Curabitur ac nibh nulla. Maecenas nec augue placerat, viverra tellus non, pulvinar risus.</textarea>
                </div>
                <div class="form-group">
                  <label class="form-label">Birthday</label>
                  <input type="text" class="form-control" value="May 3, 1995">
                </div>
                <div class="form-group">
                  <label class="form-label">Country</label>
                  <select class="custom-select">
                    <option>USA</option>
                    <option selected="">Canada</option>
                    <option>UK</option>
                    <option>Germany</option>
                    <option>France</option>
                  </select>
                </div>


              </div>
              <hr class="border-light m-0">
              <div class="card-body pb-2">

                <h6 class="mb-4">Contacts</h6>
                <div class="form-group">
                  <label class="form-label">Phone</label>
                  <input type="text" class="form-control" value="+0 (123) 456 7891">
                </div>
                <div class="form-group">
                  <label class="form-label">Website</label>
                  <input type="text" class="form-control" value="">
                </div>

              </div>
      
            </div>
            <div class="tab-pane fade" id="account-social-links">
              <div class="card-body pb-2">

                <div class="form-group">
                  <label class="form-label">Twitter</label>
                  <input type="text" class="form-control" value="https://twitter.com/user">
                </div>
                <div class="form-group">
                  <label class="form-label">Facebook</label>
                  <input type="text" class="form-control" value="https://www.facebook.com/user">
                </div>
                <div class="form-group">
                  <label class="form-label">Google+</label>
                  <input type="text" class="form-control" value="">
                </div>
                <div class="form-group">
                  <label class="form-label">LinkedIn</label>
                  <input type="text" class="form-control" value="">
                </div>
                <div class="form-group">
                  <label class="form-label">Instagram</label>
                  <input type="text" class="form-control" value="https://www.instagram.com/user">
                </div>

              </div>
            </div>
            <div class="tab-pane fade" id="account-connections">
              <div class="card-body">
                <button type="button" class="btn btn-twitter">Connect to <strong>Twitter</strong></button>
              </div>
              <hr class="border-light m-0">
              <div class="card-body">
                <h5 class="mb-2">
                  <a href="javascript:void(0)" class="float-right text-muted text-tiny"><i class="ion ion-md-close"></i> Remove</a>
                  <i class="ion ion-logo-google text-google"></i>
                  You are connected to Google:
                </h5>
                nmaxwell@mail.com
              </div>
              <hr class="border-light m-0">
              <div class="card-body">
                <button type="button" class="btn btn-facebook">Connect to <strong>Facebook</strong></button>
              </div>
              <hr class="border-light m-0">
              <div class="card-body">
                <button type="button" class="btn btn-instagram">Connect to <strong>Instagram</strong></button>
              </div>
            </div>
            <div class="tab-pane fade" id="account-notifications">
              <div class="card-body pb-2">

                <h6 class="mb-4">Activity</h6>

                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input" checked="">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">Email me when someone comments on my article</span>
                  </label>
                </div>
                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input" checked="">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">Email me when someone answers on my forum thread</span>
                  </label>
                </div>
                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">Email me when someone follows me</span>
                  </label>
                </div>
              </div>
              <hr class="border-light m-0">
              <div class="card-body pb-2">

                <h6 class="mb-4">Application</h6>

                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input" checked="">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">News and announcements</span>
                  </label>
                </div>
                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">Weekly product updates</span>
                  </label>
                </div>
                <div class="form-group">
                  <label class="switcher">
                    <input type="checkbox" class="switcher-input" checked="">
                    <span class="switcher-indicator">
                      <span class="switcher-yes"></span>
                      <span class="switcher-no"></span>
                    </span>
                    <span class="switcher-label">Weekly blog digest</span>
                  </label>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
                <!-- comment 
    <div class="text-right mt-3">
      <button type="button" class="btn" style="background-color:#006355; color:white" >Save changes</button>&nbsp;
      <button type="button" class="btn btn-default" style="background-color:#006355; color:white">Cancel</button>
    </div>-->

  </div>
        </div>
    </div><!-- comment -->
</div><!-- comment -->
        </div>    
         
                
                
                
                
           



<br><!-- -->
<br>
<br>
<!-- footer-->
      <footer class="py-4 mt-auto" style="background-color:#006355; color:white">
            <div class="container px-5" >
                <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                    <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; Vision Ireland 2022</div></div>
                    <div class="col-auto">
                        <a class="link-light small text-white" href="#!">Privacy</a>
                        <span class="text-black mx-1">&middot;</span>
                        <a class="link-light small text-white" href="#!">Terms</a>
                        <span class="text-black mx-1">&middot;</span>
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

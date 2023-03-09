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
        <title>VisionIreland Information</title>
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
                               <li class="nav-item"><a class="nav-link" href="opticianHome.jsp" style="color:white">Optician Portal</a></li>
                        
                             <!--    adding navbar headings and setting links 
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" id="navbarDropdownBlog" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false" style="color:white">Apply</a>
                                <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownBlog"> -->
                                   
                                   
                                   
                                </ul>
                            
                            
                      
                    </div>
                </div>
            </nav>
             <div class="container">
<div class="row">
      <div class="col-lx-12">
          <div class="card">
              <div class="card-body">
                <div class="row justify-content-center mt-4">
                    <div class="col-xl-10 col-lg-20">
                        <div class="text-center">
                            <h3>Information</h3>
                            <p class="" style="color: black">You may be able to get free healthcare for your eyes from the Health Service Executive (HSE). Eye health professionals include optometrists, dispensing opticians and ophthalmologists. You can read more about these healthcare professionals below.

                                Eye healthcare services in Ireland may be provided by HSE staff or by private practitioners.</p>
                           
                        </div>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
                <div class="row justify-content-center mt-5">
                    <div class="col-9">
                        <ul class="nav nav-tabs  nav-tabs-custom nav-justified justify-content-center faq-tab-box" id="pills-tab" role="tablist">
                            <li class="nav-item" role="presentation">
                                <button class="nav-link active" id="pills-genarel-tab" data-bs-toggle="pill" data-bs-target="#pills-genarel" type="button" role="tab" aria-controls="pills-genarel" aria-selected="true">
                                    <span class="font-size-16">General Questions</span>
                                </button>
                            </li>
                            <li class="nav-item" role="presentation">
                                <button class="nav-link" id="pills-privacy_policy-tab" data-bs-toggle="pill" data-bs-target="#pills-privacy_policy" type="button" role="tab" aria-controls="pills-privacy_policy" aria-selected="false">
                                    <span class="font-size-16">Eye health professionals explained</span>
                                </button>
                              </li>
                            
                          </ul>
                    </div>
                    <div class="col-lg-9">
                        <div class="tab-content pt-3" id="pills-tabContent">
                            <div class="tab-pane fade active show" id="pills-genarel" role="tabpanel" aria-labelledby="pills-genarel-tab" >
                                <div class="row g-4 mt-2">
                                    <div class="col-lg-6">
                                        <h5>Do I qualify for a free eye test in Ireland?</h5>
                                    <p class="lg-base" style="color: black" >
                                    You can get a free eye examination and the standard glasses or spectacles you need every two years from the HSE if you are: 1. A medical card holder 2. The dependent of a medical card holder 3. Living with Hepatitis C and have a Health Amendment Act Card. If you need a free eye examination more often than once every two years because of a medical condition, this will be covered.
                                    All examinations and dispensing require approval from your Local Health Office.</p>
                                    </div>
                                    <div class="col-lg-6">
                                        <h5>How to get eye care or a sight test</h5>
                                        <p class="lg-base" style="color: black">If you have a medical card, you should apply to your Local Health Office for an eye examination. The Department of Social Protection (DSP) has a list of available opticians under the Treatment Benefits Scheme.</p>
                                    </div>
                                    
                                  
                                </div>
                            </div>

                            <div class="tab-pane fade" id="pills-privacy_policy" role="tabpanel" aria-labelledby="pills-privacy_policy-tab">
                                <div class="row g-4 mt-2">
                                    <div class="col-lg-6">
                                        <h5>Optometrist</h5>
                                        <p class="lg-base" style="color: black">An Optometrist examine your eyes to test for vision problems. They use instruments to examine eye health and to test your visual acuity, depth and colour perception and your ability to focus and co-ordinate your eyes. Optometrists can also prescribe spectacles and contact lenses.</p>
                                    </div>
                                    <div class="col-lg-6">
                                        <h5>Dispensing Optician</h5>
                                        <p class="lg-base" style="color: black">A Dispensing Optician cannot prescribe prescription spectacles or contact lenses for you but they can advise you on glasses frames, lenses and contact lenses having considered your prescription and your lifestyle.</p>
                                    </div>
                                    <div class="col-lg-6">
                                        <h5>Ophthalmologist</h5>
                                        <p class="lg-base" style="color: black">An Ophthalmologist is a doctor who can perform eye surgery, diagnose and treat eye diseases and injuries. Ophthalmologists can also examine eyes and prescribe glasses and contact lenses.</p>
                                    </div>
                                    
                                </div>
                            </div>
                       
                          </div>
                    </div>
                </div>
                <!-- end row -->
              </div>
          </div>
      </div>
  </div>
</div>
    <
            <br>
            <br>
        <!-- Footer-->
       
                                            <footer class="bg-light py-3 mt-auto"
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

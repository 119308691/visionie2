<%-- 
  REference:	https://startbootstrap.com/previews/modern-business
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>


<html lang="en">

<head>

 <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <!-- title of web page -->
        <title>VisionIreland Optician Login</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Bootstrap icons-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
</head>

<body>
  <!-- Navigation-->
            <nav class="navbar navbar-expand-lg navbar-light style="background-color: #006355;">
                <div class="container px-5">
                    <a class="navbar-brand" href="index.jsp">    <img src="images/visionireland.png" alt="..." height="78"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                          <li class="nav-item"><a class="nav-link" href="index.jsp" style="color:white"><i class="fa fa-home"></i> Home</a></li>
                            <li class="nav-item"><a class="nav-link" href="information.jsp" style="color:white">FAQ</a></li>
                       
                            
                        </ul>
                    </div>
                </div>
            </nav>

  
 
</div>

  <!-- Page Content -->
  
      <!-- /.col-lg-3 -->

      <br>
          <div class="row">
        <div class="col-lg-12">
            <div class="text-center">
                <!-- adding headers -->
                <h3 style="color: white;">HSE Community Opthalmic Services Scheme </h3>
                <h4 style="color: white;">Please Login to access your Account</h4>
            </div>
        </div>
    </div>

         <div class="container">
             

 
</form>				
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body" >
            
<div class="form-group">
    <br>
    <h1 class="card-title text-center"><i class="bi bi-eyeglasses" style= "color: #FF9E00"></i></h1>
            <h5 class="card-title text-center" style= "color: #FF9E00" >Optician Login</h5>
            <br>
            <form class="form-signin" action="/visionie/opticianLogin" method="post">
              <div class="form-label-group">
                <input type="panelNO" id="panelNO" name="panelNO" class="form-control" placeholder="Panel No." required autofocus >
               
                <!--   <label for="panelNO"  style= "color: #FF9E00" >Panel No.</label> -->
              </div>
                <br>
              <div class="form-label-group">
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
               <!-- <label for="password"  style= "color: #FF9E00" >Password</label> -->
              </div>
                <br>
              <div class="custom-control custom-checkbox mb-3">
                <input type="checkbox" class="custom-control-input" id="customCheck1">
                <label class="custom-control-label" for="customCheck1" style= "color: #FF9E00">Remember password</label>
              </div>
              <button class="btn" style="background-color:#FF9E00; color:white" method="post" type="submit">Login</button>
              <hr class="my-4">
              
            </form>
          </div>
        </div>
      </div>
    </div>
  </div>


      </div>


    </div>
 

  </div>
  <br><!-- comment -->
  <br><!-- comment -->
  <br>

                                          <!-- Footer-->
        <footer class="bg-light py-4 mt-auto">
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

</body>

</html>


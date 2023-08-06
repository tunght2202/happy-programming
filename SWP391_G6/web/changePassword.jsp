
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            .divider:after,
.divider:before {
content: "";
flex: 1;
height: 1px;
background: #eee;
}
        </style>
    </head>
    <body>
        <jsp:include page="/layout/header.jsp"/>
        <!--        <h1>Login</h1>
                <form method="post" action="login">
                    Email: <input type="email" name="email" value="${param["email"]}"> <br> comment 
                    Password: <input type="password" name="pass" value="${param["pass"]}"> <br> comment 
                    <p style="color: red">${mess}</p>
                    <input type="submit" value="Login"> comment 
        
                </form>
                <a href="register">Register</a>-->



        <section class="vh-100">
  <div class="container py-5 h-100">
    <div class="row d-flex align-items-center justify-content-center h-100">
      <div class="col-md-8 col-lg-7 col-xl-6">
        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.svg"
          class="img-fluid" alt="Phone image">
      </div>
      <div class="col-md-7 col-lg-5 col-xl-5 offset-xl-1">
        <form action="Changepassword" method="POST">
          <!-- Email input -->
          <div class="d-flex flex-row align-items-center mb-4">
              <i class="fas fa-user fa-lg me-3 fa-fw"></i>
            <input name="userName" type="text" id="form1Example13" class="form-control form-control-lg" placeholder="User Name"/>
          </div>

          <!-- Password input -->
          <div class="d-flex flex-row align-items-center mb-4">
              <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
            <input name="oldPass" type="password" id="form1Example23" class="form-control form-control-lg" placeholder="Old Password"/>
          </div>
          <div class="d-flex flex-row align-items-center mb-4">
              <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
            <input name="newPass" type="password" id="form1Example23" class="form-control form-control-lg" placeholder="New Password"/>
          </div>
          <div class="d-flex flex-row align-items-center mb-4">
              <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
            <input name="passConform" type="password" id="form1Example23" class="form-control form-control-lg" placeholder="Confirm Password"/>
          </div>
          <!-- Submit button -->
          <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <input type="submit" value="Change Password" class="btn btn-primary btn-lg">
                                                <!--<button type="button" class="btn btn-primary btn-lg">Register</button>-->
                                            </div>
          <p class="text-center" style="color: red">${requestScope.mess}</p> 
          <p class="big fw-bold mt-1 pt-1 mb-0 text-center" > <a href="home.jsp" class="link-primary">Home</a></p>

        </form>
      </div>
    </div>
  </div>
</section>

        </section>    
        <!-- Footer -->
        <!--    <footer class="py-5 bg-dark">
                <div class="container">
                    <p class="m-0 text-center text-white">Assginment PRJ301 Nguyen Duc Dat</p>
                </div>
            </footer>    -->
        <jsp:include page="/layout/footer.jsp"/>
    </body>
</html>

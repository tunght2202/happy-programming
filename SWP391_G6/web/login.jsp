<%-- 
    Document   : login
    Created on : Mar 15, 2023, 10:56:35 PM
    Author     : NguyenDucDat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Happy Programming</title>
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
            .h-custom {
                height: calc(100% - 73px);
            }
            @media (max-width: 450px) {
                .h-custom {
                    height: 100%;
                }
            }
        </style>
    </head>
    <body>

        <section class="vh-100">
            <div class="container-fluid h-custom">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-md-9 col-lg-6 col-xl-5">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-login-form/draw2.webp"
                             class="img-fluid" alt="Sample image">
                    </div>
                    <div class="col-md-8 col-lg-6 col-xl-4 offset-xl-1">
                            <form method="Post" action="login">
                                <p style="color: red"> ${requestScope.mess}</p>

                            <!-- Email input -->
                            <div class="form-outline mb-4">
                                <input type="text" name="username" value="${cookie.cu.value}" class="form-control form-control-lg"
                                       placeholder="Enter username" />
                            </div>

                            <!-- Password input -->
                            <div class="form-outline mb-3">
                                <input type="password" name="pass" value="${cookie.cp.value}" class="form-control form-control-lg"
                                       placeholder="Enter password" />
                                <br>
                                <input style="margin-top: 15px" type="checkbox" name = "rem" value = "ON" ${cookie.cr.value !=null ? 'checked' : ''}> Remember me
                                 
                            </div>
                            <div class="text-center text-lg-start mt-4 pt-2">
                                <div>
                                </div>
                                <input type="submit" value="Login" class="btn btn-primary btn-lg"
                                       style="padding-left: 2.5rem; padding-right: 2.5rem;">
                                <p class="small fw-bold mt-2 pt-1 mb-0"> <a href="resetPassword"
                                                                                                  class="link-danger">Reset Password</a></p>
                                <p class="small fw-bold mt-2 pt-1 mb-0">Don't have an account? <a href="Register"
                                                                                                  class="link-danger">Register</a></p>
                            </div>

                        </form>
                    </div>
                </div>
            </div>

        </section>    
    </body>
</html>

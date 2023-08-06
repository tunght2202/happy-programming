
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register Happy Programming</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
        <section style="background-color: #eee;">
            <div class="container h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col-lg-12 col-xl-11">
                        <div class="card text-black" style="border-radius: 25px;">
                            <div class="card-body p-md-5">
                                <div class="row justify-content-center">
                                    <div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">

                                        <p class="text-center h1 fw-bold mb-5 mx-1 mx-md-4 mt-4">Register</p>

                                        <form method="post" action="regis" class="mx-1 mx-md-4">
                                            <p style="color: red; margin-left: 42px ">${requestScope.mess}</p>
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="email" id="form3Example3c" name="email" required="" class="form-control" placeholder="Enter Your Email"/>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="text" id="form3Example1c" name="name" required=""  class="form-control" placeholder="Enter Your Full Name"/>
                                                </div>
                                            </div>
                                            
                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-user fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="text" id="form3Example1c" name="username" required=""  class="form-control" placeholder="Enter Your Username"/>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-venus-mars fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="gender" value="1" name="inlineRadioOptions" id="inlineRadio1" value="option1" />
                                                        <label class="form-check-label" for="inlineRadio1">Male</label>
                                                    </div>

                                                    <div class="form-check form-check-inline">
                                                        <input class="form-check-input" type="radio" name="gender" value="0" name="inlineRadioOptions" id="inlineRadio2" value="option2" />
                                                        <label class="form-check-label" for="inlineRadio2">Female</label>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-phone fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="text" id="form3Example1c" name="phone" required="" class="form-control" placeholder="Enter Your Phone Number"/>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-lock fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="password" id="form3Example4c" name="pass" required="" class="form-control" placeholder="Enter Your Password"/>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-key fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="password" id="form3Example4cd" name="cfpass" required="" class="form-control" placeholder="Enter Your Password Confirm"/>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-calendar-days fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <div class="form-outline datepicker" data-mdb-toggle-button="false">
                                                        <input
                                                            type="date"
                                                            max="2017-12-31"
                                                            name="dob" required=""
                                                            class="form-control"
                                                            id="exampleDatepicker1"
                                                            data-mdb-toggle="datepicker"
                                                            />
<!--                                                        <label for="exampleDatepicker1" class="form-label">Select a date</label>-->
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="d-flex flex-row align-items-center mb-4">
                                                <i class="fas fa-location-dot fa-lg me-3 fa-fw"></i>
                                                <div class="form-outline flex-fill mb-0">
                                                    <input type="text" id="form3Example4cd" name="address" required="" class="form-control" placeholder="Enter Adress"/>
                                                </div>
                                            </div>


                                            <div class="d-flex justify-content-center mx-4 mb-3 mb-lg-4">
                                                <input type="submit" value="Register" class="btn btn-primary btn-lg">
                                                <!--<button type="button" class="btn btn-primary btn-lg">Register</button>-->
                                            </div>

                                        </form>

                                    </div>
                                    <div class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

                                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
                                             class="img-fluid" alt="Sample image">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>    

        <!-- Footer -->
        <!--    <footer class="py-5 bg-dark">
                <div class="container">
                    <p class="m-0 text-center text-white">Assginment PRJ301 Nguyen Duc Dat</p>
                </div>
            </footer>    -->
    </body>
</html>

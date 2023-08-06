<%-- 
    Document   : CreateCV
    Created on : Jul 18, 2023, 3:28:40 AM
    Author     : 84339
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update CV</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            .card-registration .select-input.form-control[readonly]:not([disabled]) {
                font-size: 1rem;
                line-height: 2.15;
                padding-left: .75em;
                padding-right: .75em;
            }
            .card-registration .select-arrow {
                top: 13px;
            }

        </style>
    </head>
    <body>
        <jsp:include page="/layout/header.jsp"/>
        <section class="h-100 bg-dark">
            <div class="container py-5 h-100">
                <div class="row d-flex justify-content-center align-items-center h-100">
                    <div class="col">
                        <div class="card card-registration my-4">
                            <div class="row g-0">
                                <div class="col-xl-6 d-none d-xl-block">
                                    <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img4.webp"
                                         alt="Sample photo" class="img-fluid"
                                         style="border-top-left-radius: .25rem; border-bottom-left-radius: .25rem;" />
                                </div>
                                <div class="col-xl-6">
                                    <div class="card-body p-md-5 text-black">
                                        <h3 class="mb-5 text-uppercase">Update CV Of Mentor</h3>
                                        <form method="post" action="UpdateCV">
                                            <input name = "id" id="" class="input-text js-input" type="hidden" value = "${sessionScope.currentUser.u_id}"required>
                                            <input name = "pass" id="" class="input-text js-input" type="hidden" value = "${sessionScope.currentUser.password}"required>
                                            <input name = "phone" id="" class="input-text js-input" type="hidden" value = "${sessionScope.currentUser.phoneNumber}"required>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input name = "username" type="text" id="form3Example1m" class="form-control form-control-lg" placeholder="Account Name" />
                                                        <label class="form-label" for="form3Example1m" ></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input name = "fullname"type="text" id="form3Example1n" class="form-control form-control-lg" placeholder="Full Name"/>
                                                        <label class="form-label" for="form3Example1n" ></label>
                                                    </div>
                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input name = "dob" type="date" id="form3Example1m1" class="form-control form-control-lg" placeholder="Date Of Birth"/>
                                                        <label class="form-label" for="form3Example1m1" placeholder="Date Of Birth"></label>
                                                    </div>
                                                </div>
                                                <div class="col-md-6 mb-4">
                                                    <div class="form-outline">
                                                        <input name = "email" type="text" id="form3Example1n1" class="form-control form-control-lg" placeholder="Email"/>
                                                        <label class="form-label" for="form3Example1n1" ></label>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="d-md-flex justify-content-start align-items-center mb-4 py-2">

                                                <h6 class="mb-0 me-4" >Sex </h6>

                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <input class="form-check-input" type="radio"  id="femaleGender"
                                                           name="gender" value="0" />
                                                    <label class="form-check-label" for="femaleGender">Female</label>
                                                </div>

                                                <div class="form-check form-check-inline mb-0 me-4">
                                                    <input class="form-check-input" type="radio"  id="maleGender"
                                                           name="gender" value="1" />
                                                    <label class="form-check-label" for="maleGender">Male</label>
                                                </div>



                                            </div>
                                            <div  class="form-outline mb-4">
                                                <input name = "address" type="text" id="form3Example8" class="form-control form-control-lg" placeholder="Address"/>
                                                <label class="form-label" for="form3Example8" ></label>
                                            </div>
                                            <div  class="form-outline mb-4">
                                                <input name="profession"type="text" id="form3Example9" class="form-control form-control-lg" placeholder="Profession"/>
                                                <label class="form-label" for="form3Example9" ></label>
                                            </div>

                                            <div  class="form-outline mb-4">
                                                <input name ="ProIntro"type="text" id="form3Example90" class="form-control form-control-lg"  placeholder="Profession Introduction"/>
                                                <label class="form-label" for="form3Example90" ></label>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-6 mb-4">
                                                    <h5 class="mb-0 me-4" >Skills </h5>
                                                    <select class="skill_id" name = "skill_id">
                                                        <c:forEach items="${requestScope.skillsList}" var="s">
                                                            <option value="${s.skill_id}">${s.skill_name}</option>
                                                        </c:forEach>
                                                    </select>
                                                </div>




                                                <div  class="form-outline mb-4">
                                                    <input name = "SerDes"type="text" id="form3Example99" class="form-control form-control-lg" placeholder="Service Description"/>
                                                    <label class="form-label" for="form3Example99" ></label>
                                                </div>

                                                <div  class="form-outline mb-4">
                                                    <input name = "achivement"type="text" id="form3Example97" class="form-control form-control-lg" placeholder="Achievements Description"/>
                                                    <label class="form-label" for="form3Example97" ></label>
                                                </div>
                                                <div class="form-outline mb-4">
                                                    <input name = "framework" type="text" id="form3Example97" class="form-control form-control-lg" placeholder="The Program(Framework)"/>
                                                    <label class="form-label" for="form3Example97" ></label>
                                                </div>
                                                <div class="d-flex justify-content-end pt-3">
                                                    <button type="submit" class="btn btn-warning btn-lg ms-2">Update CV</button>
                                                </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="/layout/footer.jsp"/>
    </body>
</html>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous"><!-- comment -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script><!-- comment -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown ul {
        position: absolute;
        top: 100%;
        left: 0;
        display: none;
        padding: 0;
        margin: 0;
        background-color: #f9f9f9;
        border-radius: 1px solid #ddd;
    }

    .dropdown:hover ul {
        display: block;
    }

    .dropdown li {
        display: block;
    }

    .dropdown a {
        display: block;
        padding: 10px;
        text-decoration: none;
        color: black;
    }

    .dropdown a:hover {
        background-color: #ddd;
    }
</style>
<!-- Responsive navbar-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container px-5">
        <a class="navbar-brand" href="home">Happy Programming</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                <li class="nav-item">
                    <a class="nav-link active" aria-current="page" href="home">Home</a>
                </li>
                <c:if test="${sessionScope.currentUser.getRole() == 2}">
                    <li class="dropdown"><a style="color: rgba(255,255,255,.55); margin-top: -2px;" href="#"><span>Request</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuCreate">
                            <li><a href="RequestList?u_id=${sessionScope.currentUser.u_id}">View Request</a></li>
                        </ul>
                    </li>
                </c:if>
                <c:if test="${sessionScope.currentUser.getRole() == 4}">

                    <li><a class="nav-link" aria-current="page"  href="viewListOfSkill">View List Skills</a></li>

                </c:if>
                <c:if test="${sessionScope.currentUser.getRole() == 3}">
                    <li class="dropdown"><a style="color: rgba(255,255,255,.55); margin-top: -2px;" href="#"><span>CV</span> <i class="bi bi-chevron-down dropdown-indicator"></i></a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuCreate">
                            <li><a href="CreateCVServerlet">Create CV</a></li>
                            <li><a href="UpdateCV">Update CV</a></li>
                        </ul>
                    </li>
                </c:if>
                <c:if test="${sessionScope.currentUser.getRole() == 3}">
                    <li class="nav-item">
                        <a class="nav-link" aria-current="page" href="ListRequestOfMentor?u_id=${sessionScope.currentUser.u_id}">View Request of Mentor</a>
                    </li>
                </c:if>
                <c:if test="${sessionScope.currentUser!=null}">
                    <div class="dropdown">
                        <a class="dropdown-toggle d-flex align-items-center hidden-arrow" href="#" id="navbarDropdownMenuAvatar" role="button" data-mdb-toggle="dropdown" aria-expanded="false">
                            <img src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg" class="rounded-circle" height="25" alt="Black and White Portrait of a Man" loading="lazy" />
                        </a>
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownMenuAvatar">
                            <li>
                                <a class="dropdown-item" href='editProfile'>Update profile</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href='Changepassword'>Change Password</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="Logout">Logout</a>
                            </li>
                        </ul>
                    </div>
                </c:if>
                <c:if test="${sessionScope.currentUser==null}">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="login">Login</a>
                    </li>
                </c:if>
            </ul>
        </div>
    </div>
</nav>

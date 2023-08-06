

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List Of Skills</title>
        <!--   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
                <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
                <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/css/bootstrap.min.css">

    </head>
    <body>
        <% int i = 0 ;%>
        <div class="container-xl px-4 mt-10" style=" margin-top: 30px; margin-bottom: 30px">
            <div class="col-auto mt-4">
                <h1 class="page-header-title"> View List Of Skill</h1>
            </div>
        </div>


        <div class="px-5 mt-n10" >
            <div style="border: gainsboro groove; padding: 10px">

                <div class="datatable-top " style=" margin-bottom: 25px">
                    <div style="margin-left: 94%" >
                        <a href="AddNewSkill.jsp" style="font-size: 11px" class="btn btn-info btn-lg bg-primary">
                            <span class="glyphicon glyphicon-plus-sign"></span> Plus
                        </a>
                    </div>
                </div> 

                <div class="page-header-subtitle" > </div>
                <table  class="table table-bordered">
                    <thead>
                        <tr>
                            <th>STT </th>
                            <th>ID</th>
                            <th>Name of skill</th>
                            <th>Status</th>
                            <th>Edit</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="listS" items="${requestScope.listS}">
                            <% i++;%>
                            <tr>
                                <td > <%= i %> </td>
                                <td>${listS.skill_id}</td><!-- comment -->
                                <td>${listS.skill_name}</td>
                                <td>
                                    <button class="badge ${listS.status == 1 ? 'bg-primary' : 'bg-gray'} text-white rounded-pill"
                                            style="border: 0px" onclick="window.location.href = 'editStatus?sid=${listS.skill_id}'" >
                                        ${listS.status == 1 ? 'active' : 'inactive '}</button> </td>
                                <td>
                                    <button style="border: 0px" onclick="window.location.href = 'editSkillPage?sid=${listS.skill_id}'" >
                                        Edit </button>
                                </td>
                            </c:forEach>

                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
<!--<!DOCTYPE html>
<html>
    <head>
        <style>
            body {  counter-reset: section;  color: white;  background-color: #58257b}
            h2::before {  counter-increment: section}</style>
    </head>
    <body>
        <h3>Ví dụ sử dụng Counter - Bộ đếm CSS:</h3>
        <h1>Website Quản Trị Mạng</h1>
        <h2>Làng Công nghệ</h2>
        <h2>Công nghệ</h2>
        <h2>Khoa học</h2>
    </body>
</html>-->
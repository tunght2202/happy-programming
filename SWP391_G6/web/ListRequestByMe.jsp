<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : ListRequestByMe
    Created on : Jun 20, 2023, 9:42:29 PM
    Author     : QUAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>List of Requests</title>
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/css/bootstrap.min.css">
    </head>
    <body>
        <jsp:include page="/layout/header.jsp"/>
        <div class="container">
            <h2 class="text-center mt-5">List of Requests</h2>
            <table class="table mt-4">
                <thead>
                    <tr>
                        <th>Title</th>
                        <th>Deadline Date</th>
                        <th>Deadline Hour</th>
                        <th>Content</th>
                        <th>Skills</th>
                        <th>Status</th>
                        <th></th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="req" items="${list}">
                        <tr>
                            <td>${req.title}</td>
                            <td>${req.deadline_date}</td>
                            <td>${req.deadline_hour}</td>
                            <td>${req.content}</td>
                            <td>${req.skill_name}</td>
                            <td>${req.status_name}</td>
                            <td>
                                <button class="btn btn-primary btn-sm" ><a class="btn btn-primary btn-sm" href="UpdateRequest?mentorID=${req.mentorID}">Update</a></button>
                                <form action="deleteRequest" method="POST">
                                    <input type="hidden" name="request_id" value="${req.request_id}">
                                    <button class="btn btn-danger" type="submit">Delete</button>
                                </form>
                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
            <a href="home" class="btn btn-primary">Back to Home</a>
        </div>


        <!-- Bootstrap JS -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.2.3/js/bootstrap.bundle.min.js"></script>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <h1>   </h1><br>
        <jsp:include page="/layout/footer.jsp"/>
    </body>
</html>


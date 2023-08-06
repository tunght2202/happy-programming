<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : createRequest
    Created on : Jun 12, 2023, 1:23:23 PM
    Author     : QUAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <title>Create Request</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- LINEARICONS -->
        <link rel="stylesheet" href="fonts/linearicons/style.css">

        <!-- STYLE CSS -->
        <link rel="stylesheet" href="css/style1.css">
    </head>

    <body>
        <% int i = 0 ;%>
        <jsp:include page="/layout/header.jsp"/>
        <div class="wrapper" style="background-color: white">
            <div class="inner">
                <img src="images/image-1.png" alt="" class="image-1">
                <form action="createRequest" method="POST">
                    <h3>Create Request</h3>
                    <input type="hidden" name="menteeID" value="${sessionScope.currentUser.u_id}">
                    <input type="hidden" name="mentorID" value="${requestScope.mentorID}">
                    <div class="form-holder">
                        <label for="title" class="form-label">Title</label>
                        <input type="text" class="form-control" id="title" name="title" required>
                    </div>
                    <div class="form-holder">
                        <label for="deadlineDate" class="form-label">Deadline Date</label>
                        <input type="date" class="form-control" id="deadlineDate" name="deadline_date" required>
                    </div>
                    <div class="form-holder">
                        <label for="deadlineHour" class="form-label">Deadline Hour</label>
                        <input type="time" class="form-control" id="deadlineHour" name="deadline_hour" required>
                    </div>
                    <div class="form-holder">
                        <label for="content" class="form-label">Content:</label>
                        <textarea class="form-control" id="content" name="content" required></textarea>
                    </div>
                    <div class="form-holder">
                        <label class="form-label" for="skills">Select Skills (Select at least one and up to three):</label><br>
                        <table class="table mt">
                            <tbody>
                                <c:forEach var="listS" items="${requestScope.listS}">
                                <!--<td>${listS.skill_name}</td>-->
                                    <% i++;%>
                                    <tr>
                                <td>
                                    <input type="checkbox" id="${listS.skill_name}" name="skills" value="<%= i %>">
                                    <label for="$${listS.skill_name}">${listS.skill_name}</label><br>
                                </td>
                                    </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <table style="display: flex; justify-content: right">
                        <td><a href="home" class="btn btn-primary" style="padding: 11px">Cancel</a></td>
                        <td><button type="submit" class="btn btn-primary">OK</button></td>
                    </table>
                </form>
                <img src="images/image-2.png" alt="" class="image-2">
            </div>

        </div>

        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/main.js"></script>
        <jsp:include page="/layout/footer.jsp"/>
    </body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
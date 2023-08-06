
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>UpdateRequest</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <style>
            .get-in-touch {
                max-width: 800px;
                margin: 50px auto;
                position: relative;
            }
            .get-in-touch .title1 {
                text-align: center;
                text-transform: uppercase;
                letter-spacing: 3px;
                font-size: 3.2em;
                line-height: 48px;
                padding-bottom: 48px;
                color: #5543ca;
                background: #5543ca;
                background: -moz-linear-gradient(left,#f4524d  0%,#5543ca 100%) !important;
                background: -webkit-linear-gradient(left,#f4524d  0%,#5543ca 100%) !important;
                background: linear-gradient(to right,#f4524d  0%,#5543ca  100%) !important;
                -webkit-background-clip: text !important;
                -webkit-text-fill-color: transparent !important;
            }

            .contact-form .form-field {
                position: relative;
                margin: 32px 0;
            }
            .contact-form .input-text {
                display: block;
                width: 100%;
                height: 36px;
                border-width: 0 0 2px 0;
                border-color: #5543ca;
                font-size: 18px;
                line-height: 26px;
                font-weight: 400;
            }
            .contact-form .input-text:focus {
                outline: none;
            }
            .contact-form .input-text:focus + .label,
            .contact-form .input-text.not-empty + .label {
                -webkit-transform: translateY(-24px);
                transform: translateY(-24px);
            }
            .contact-form .label {
                position: absolute;
                left: 20px;
                bottom: 30px;
                font-size: 18px;
                line-height: 26px;
                font-weight: 400;
                color: #5543ca;
                cursor: text;
                transition: -webkit-transform .2s ease-in-out;
                transition: transform .2s ease-in-out;
                transition: transform .2s ease-in-out,
                    -webkit-transform .2s ease-in-out;
            }
            .contact-form .submit-btn {
                display: inline-block;
                background-color: #000;
                background-image: linear-gradient(125deg,#a72879,#064497);
                color: #fff;
                text-transform: uppercase;
                letter-spacing: 2px;
                font-size: 16px;
                padding: 8px 16px;
                border: none;
                width:200px;
                cursor: pointer;
            }

        </style>
    </head>
    <body>
        <jsp:include page="/layout/header.jsp"/>

        <section class="get-in-touch">
            <h1 class="title1">Update Request</h1>
            <form method="post" action="UpdateRequest" class="contact-form row">

                <input name = "menteeID" id="menteeID" class="input-text js-input" type="hidden" value = "${sessionScope.currentUser.u_id}"required>

                <input type="hidden" name="mentorID" value="${requestScope.mentorID}">


                <div class="form-field col-lg-12 ">
                    <input name = "title" id="title" class="input-text js-input" type="text" required>
                    <label class="label" for="title">Title</label>
                </div>
                </div>
                <div class="form-field col-lg-12">
                    <input name = "content" id="content" class="input-text js-input" type="text" required>
                    <label class="label" for="content">Content</label>
                </div>

                <div class="form-field col-lg-12">
                    <label class="label" for="deadline_date">DeadlineDate</label>
                    <input name = "deadline_date" id="deadline_date" class="input-text js-input" type="date" required>

                </div>
                <div class="form-field col-lg-12">
                    <label class="label" for="deadline_hour">DeadlineHour</label>
                    <input name = "deadline_hour" id="deadline_hour" class="input-text js-input" type="time" required>
                </div>
                <div class=" form-field col-lg-3"><label class="label" for="skill_id">Skills</label> <br>
                    <select class="input-text js-input" name = "skill_id">
                        <c:forEach items="${requestScope.skillsList}" var="s">
                            <option value="${s.skill_id}">${s.skill_name}</option>
                        </c:forEach>
                    </select>
                </div>
                <div class=" form-field col-lg-3"><label class="label" for="status_id">Status</label> <br>
                    <select class="input-text js-input" name = "status_id">
                        <c:forEach items="${requestScope.statuslist}" var="s">
                            <option value="${s.status_id}">${s.status_name}</option>
                        </c:forEach>
                    </select>
                </div>

                <div class="form-field col-lg-12">
                    <input class="submit-btn" type="submit" value="Update Request">
                </div>
            </form>
        </section>

    </script>
    <jsp:include page="/layout/footer.jsp"/>
</body>
</html>

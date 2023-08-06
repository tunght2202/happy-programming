<%-- 
    Document   : Index.jsp
    Created on : July 5, 2023, 8:23:05 PM
    Author     : Quan
--%>
<%@page import = "dao.*" %>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Happy Programming</title>
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <jsp:include page="/layout/header.jsp"/>
        <!-- Page Content-->
        <div class="container px-4 px-lg-5">
            <!-- Heading Row-->
            <div class="row gx-4 gx-lg-5 align-items-center my-5">
                <div class="col-lg-7"><img class="img-fluid rounded mb-4 mb-lg-0" src="https://www.questers.com/sites/default/files/1200x630-programmers-day.jpg" alt="..." /></div>
                <div class="col-lg-5">
                    <h1 class="font-weight-light">Nền tảng Kết nối Cố vấn và Học cùng Chuyên gia</h1>
                    <p>Với sứ mệnh là nâng cao chất lượng nguồn nhân lực, giúp thanh niên Việt Nam định vị nghề nghiệp và tạo cơ hội phát triển</p>
                    <a class="btn btn-primary" href="#start">Let's Start!</a>
                </div>
            </div>
            <!-- Call to Action-->
            <div class="card text-white bg-secondary my-5 py-4 text-center">
                <div class="card-body">
                    <p class="text-white m-0">
                        Song song với thời đại công nghệ phát triển, bên cạnh việc sử dụng gia sư offline, 
                        chúng ta cần một cố vấn cá nhân để thúc đẩy quá trình học tập của mình nhanh hơn. 
                        Điều này rất phù hợp với thời đại công nghệ số khi có thể kết nối tức thời, cung cấp giải pháp. 
                        Trang web này được mở với mục đích phát triển một hệ thống trực tuyến để người cố vấn, 
                        người được cố vấn và nhiều tác nhân và khía cạnh khác kết nối trực tiếp.
                    </p></div>
            </div>
            <img src="https://substackcdn.com/image/fetch/f_auto,q_auto:good,fl_progressive:steep/https%3A%2F%2Fsubstack-post-media.s3.amazonaws.com%2Fpublic%2Fimages%2F6830536f-8a0f-48ad-89f1-30ace8671e78_2048x1251.jpeg" 
                 width="100%" alt="cộng đồng mentor"/>
            <!-- Content Row-->
            <%
                MentorDAO md = new MentorDAO();
                List<User> listU = md.getMentorSuggestion();
            %>
            <div class="card text-white bg-secondary my-4 py-3 text-center" id="start">
                <div class="card-body">
                    <h2 class="text-white m-0">
                        Mentor Nổi Bật
                    </h2></div>
            </div>
            <div class="row gx-4 gx-lg-5">
                <% for (User user : listU) { %>
                <div class="col-md-3 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h2 class="card-title"><a style="text-decoration: none" href="login.jsp"> <%= user.getFullName() %> </a></h2>
                            <div class="mt-1 mb-0 text-muted small">
                                <span><%= user.getUsername() %></span>
                            </div>
                            <div class="font-size-sm">
                                <% if(md.getRating(user.getU_id()) == 5){ %>
                                <p><span>&#x2605;</span><span>&#x2605;</span><span>&#x2605;</span><span>&#x2605;</span><span>&#x2605;</span></p>
                                <% }
                                         else if(md.getRating(user.getU_id()) >= 4 && md.getRating(user.getU_id()) < 5){  %>
                                <p><span>&#x2605;</span><span>&#x2605;</span><span>&#x2605;</span><span>&#x2605;</span><span>&#9734;</span></p>
                                <% }
                                         else if(md.getRating(user.getU_id()) >= 3 && md.getRating(user.getU_id()) < 4){  %>
                                <p><span>&#x2605;</span><span>&#x2605;</span><span>&#x2605;</span><span>&#9734;</span><span>&#9734;</span></p>
                                <% }
                                         else if(md.getRating(user.getU_id()) >= 2 && md.getRating(user.getU_id()) < 3){  %>
                                <p><span>&#x2605;</span><span>&#x2605;</span><span>&#9734;</span><span>&#9734;</span><span>&#9734;</span></p>
                                <% }
                                         else if(md.getRating(user.getU_id()) >= 1 && md.getRating(user.getU_id()) < 2){  %>
                                <p><span>&#x2605;</span><span>&#9734;</span><span>&#9734;</span><span>&#9734;</span><span>&#9734;</span></p>
                                <% }
                                         else{  %>
                                <p><span>&#9734;</span><span>&#9734;</span><span>&#9734;</span><span>&#9734;</span><span>&#9734;</span></p>
                                <%}%>
                            </div>
                            <div class="font-size-sm"><i class="glyphicon glyphicon-user"></i>  <%= md.getNumberMentee(user.getU_id()) %></div>
                        </div>
                        <div class="card-footer"><a class="btn btn-primary btn-sm" href="createRequest?mentorID=<%=user.getU_id() %>">Booking Now</a></div>
                    </div>
                </div> 
                <% } %>

            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
        <jsp:include page="/layout/footer.jsp"/>
    </body>
</html>

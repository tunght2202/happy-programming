<%-- 
    Document   : editProfile
    Created on : Jun 11, 2023, 4:09:16 PM
    Author     : QUAN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset='utf-8'>
        <meta name='viewport' content='width=device-width, initial-scale=1'>
        <title>Update Profile</title>

        <link href='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/css/bootstrap.min.css' rel='stylesheet'>
        <script type='text/javascript' src='https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>
        <style>
            ::-webkit-scrollbar {
                width: 8px;
            }

            /* Track */
            ::-webkit-scrollbar-track {
                background: #f1f1f1;
            }

            /* Handle */
            ::-webkit-scrollbar-thumb {
                background: #888;
            }

            /* Handle on hover */
            ::-webkit-scrollbar-thumb:hover {
                background: #555;
            }

            body {
                background: rgb(0, 0, 0)
            }

            .avatar-container {
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                width: 200px;
                height: 200px;
                border: 1px solid #ccc;
                border-radius: 50%;
            }

            .avatar-image {
                width: 150px;
                height: 150px;
                border-radius: 50%;
                object-fit: cover;
            }

            .edit-avatar-button {
                margin-top: 10px;
                padding: 8px 16px;
                background-color: #007bff;
                color: #fff;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }
            .form-control:focus {
                box-shadow: none;
                border-color: #BA68C8
            }

            .profile-button {
                background: rgb(0, 0, 0);
                box-shadow: none;
                border: none
            }

            .profile-button:hover {
                background: #682773
            }

            .profile-button:focus {
                background: #682773;
                box-shadow: none
            }

            .profile-button:active {
                background: #682773;
                box-shadow: none
            }

            .back:hover {
                color: #682773;
                cursor: pointer
            }

            .labels {
                font-size: 11px
            }

            .add-experience:hover {
                background: #BA68C8;
                color: #fff;
                cursor: pointer;
                border: solid 1px #BA68C8
            }
        </style>
    </head>

    <body className='snippet-body'>
        <jsp:include page="/layout/header.jsp"/>
        <div class="container rounded bg-white mt-5 mb-5">
            <div class="row">
                <div class="col-md-3 border-right">
                    <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                        <label for="avatar">Avatar:</label>
                        <img src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg" class="rounded-circle" height="100px" alt="Black and White Portrait of a Man" loading="lazy" />
                        <br>
                        <input type="file" id="avatar" name="avatar"><br>
                        <span class="font-weight-bold">${requestScope.user.fullName}</span>
                        <span class="text-black-50">${sessionScope.currentUser.email}</span>
                    </div>
                </div>
                <div class="col-md-9 border-right">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center mb-3">
                            <h4 class="text-right">Edit Profile</h4>
                        </div>
                        <form method="post" action="editProfile">
                            <input type="hidden" name="u_id" value="${sessionScope.currentUser.u_id}">
                            <div class="row mt-2">
                                <div class="col-md-12">
                                    <label for="username" class="labels">Account Name</label>
                                    <input type="text" class="form-control" id="username" name="username"
                                           value="${requestScope.user.username}" maxlength="20" required>
                                </div>
                                <div class="col-md-12">
                                    <label for="password" class="labels">Password</label>
                                    <input type="password" class="form-control" id="password" name="password"
                                           value="${requestScope.user.password}" readonly>
                                </div>
                                <div class="col-md-12">
                                    <label for="fullName" class="labels">Full Name</label>
                                    <input type="text" class="form-control" id="fullName" name="fullName"
                                           value="${requestScope.user.fullName}" maxlength="20" required>
                                </div>
                                <div class="col-md-12">
                                    <label for="dob" class="labels">Date of Birth</label>
                                    <input type="date" class="form-control" id="dob" name="dob"
                                           value="${requestScope.user.dob}" required>
                                </div>
                                <div class="col-md-12">
                                    <label for="email" class="labels">Email</label>
                                    <input type="email" class="form-control" value="${requestScope.user.email}"
                                           id="email" name="email" readonly>
                                </div>
                                <div class="col-md-12">
                                    <label class="labels">Sex</label>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gender" value="1"
                                               ${requestScope.user.gender==1? 'checked' : '' } required>
                                        <label class="form-check-label" for="male">Male</label>
                                    </div>
                                    <div class="form-check">
                                        <input class="form-check-input" type="radio" name="gender" value="0"
                                               ${requestScope.user.gender==0? 'checked' : '' }>
                                        <label class="form-check-label" for="female">Female</label>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <label for="phoneNumber" class="labels">Phone Number</label>
                                    <input type="text" class="form-control" id="phoneNumber"
                                           value="${requestScope.user.phoneNumber}" name="phoneNumber">
                                </div>
                                <div class="col-md-12">
                                    <label for="address" class="labels">Address</label>
                                    <textarea class="form-control" id="address" value="" name="address"
                                              required>${requestScope.user.address}</textarea>
                                </div>
                            </div>
                            <div class="mt-5 text-center">
                                <a href="home" class="btn btn-warning profile-button">Cancel</a>
                                <button class="btn btn-primary profile-button" type="submit">Save Profile</button>
                            </div>
                        </form>  
                    </div>
                    <!-- </div>
                <div class="col-md-4">
                    <div class="p-3 py-5">
                        <div class="d-flex justify-content-between align-items-center experience"><span>Edit
                                Experience</span><span class="border px-3 p-1 add-experience"><i
                                    class="fa fa-plus"></i>&nbsp;Experience</span></div><br>
                        <div class="col-md-12"><label class="labels">Experience in Designing</label><input type="text"
                                class="form-control" placeholder="experience" value=""></div> <br>
                        <div class="col-md-12"><label class="labels">Additional Details</label><input type="text"
                                class="form-control" placeholder="additional details" value=""></div>
                    </div>
                </div> -->
                </div>
            </div>
        </div>
    </div>
    <script type='text/javascript'
    src='https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-alpha1/dist/js/bootstrap.bundle.min.js'></script>
    <script type='text/javascript' src='#'></script>
    <script type='text/javascript' src='#'></script>
    <script type='text/javascript' src='#'></script>
    <script type='text/javascript'>#</script>
    <script type='text/javascript'>var myLink = document.querySelector('a[href="#"]');
        myLink.addEventListener('click', function (e) {
            e.preventDefault();
        });</script>
        <jsp:include page="/layout/footer.jsp"/>
    <script>
        // Hiển thị hình ảnh được chọn trước khi tải lên
        document.getElementById("avatar").addEventListener("change", function (event) {
            var input = event.target;
            var reader = new FileReader();

            reader.onload = function () {
                var avatarPreview = document.querySelector(".avatar");
                avatarPreview.src = reader.result;
            }

            reader.readAsDataURL(input.files[0]);
        });
    </script>
</body>

</html>
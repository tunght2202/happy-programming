

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Skill</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
            .gradient-custom {
            /* fallback for old browsers */
            background: #6a11cb;

            /* Chrome 10-25, Safari 5.1-6 */
            background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

            /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
            background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))
}
        </style>
    </head>
    <body>
        <section class="vh-100 gradient-custom">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 ">

            <div class="mb-md-5 mt-md-4 pb-5">
                <div class="text-center">
              <h2 class="fw-bold mb-2 text-uppercase">Edit the skill</h2>
              <p class="text-white-50 mb-5">Please enter new information Of the skill!</p>
                </div>
                <!<!-- input information -->
                <form action="editSkill" method="post">
              <div class="form-outline form-white mb-4">
                  <input type="text" style="height: 0;width: 0;size: 0;border: none;margin: 0;padding: 0" name="idSkill" value="${requestScope.skill.skill_id}">

                  <input type="text" id="typeEmailX" class="form-control form-control-lg" name="nameSkill" value="${requestScope.skill.skill_name}"/>
              </div>

              <div class="mb-4" >
                                                    <div>
                                                        <input class="form-check-input" type="radio" name="status" value="1" name="status" 
                                                               id="inlineRadio1" value="option1" ${requestScope.skill.status == 1 ? "checked" : ""} />
                                                        <label class="form-check-label" for="inlineRadio1">Enable</label>
                                                    </div>

                                                    <div>
                                                        <input class="form-check-input" type="radio" name="status" value="0" name="status"
                                                               id="inlineRadio2" value="option2" ${requestScope.skill.status == 0 ? "checked" : ""} />
                                                        <label class="form-check-label" for="inlineRadio2">Disable</label>
                                                    </div>

                                                </div>
              
                <div class="text-center">
              <button class="btn btn-outline-light btn-lg px-5" type="submit">Change</button>
              </form>
                </div>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
</section>
    </body>
</html>

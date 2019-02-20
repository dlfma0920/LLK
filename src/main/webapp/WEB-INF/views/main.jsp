<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="true"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
   pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>

<meta charset="utf-8">
<meta name="viewport"
   content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>JOB SUPPORTING SYSTEM</title>

<style>
p {
   font-family: 'Do Hyeon', sans-serif;
   font-size: 16px;
   color: #555555;
}
p.table{
   font-family: 'Black Han Sans', sans-serif;
}

hr.style-one {
   border: 0;
   height: 1px;
   background: #333;
   background-image: -webkit-linear-gradient(left, #ccc, #333, #ccc);
   background-image: -moz-linear-gradient(left, #ccc, #333, #ccc);
   background-image: -ms-linear-gradient(left, #ccc, #333, #ccc);
   background-image: -o-linear-gradient(left, #ccc, #333, #ccc);
}
</style>


</head>

<body id="page-top">
   <c:import url="Navigation.jsp" />


   <!-- Header -->
   <header class="masthead bg-primary text-white text-center">
      <div class="container">
         <img class="img-fluid mb-5 d-block mx-auto"
            src="${pageContext.request.contextPath}/resources/img/profile.png"
            alt="">
         <h1 class="text-uppercase mb-0">환영합니다.</h1>
         <hr class="star-light">
         <h2 class="font-weight-light mb-0">日本就職について</h2>
      </div>
   </header>

   <!-- Portfolio Grid Section -->
   <section class="portfolio" id="portfolio">
      <div class="container">
         <h2 class="text-center text-uppercase text-secondary mb-0">기업정보</h2>
         <hr class="star-dark mb-5">
         <div class="row align-items-end">

            <c:forEach var="job" items="${list}">
               <div class="col-md-6 col-lg-4 text-center">
                  <a class="portfolio-item d-block mx-auto" href="#${job.ccode}">
                     <div
                        class="portfolio-item-caption d-flex position-absolute h-100 w-100">
                        <div
                           class="portfolio-item-caption-content my-auto w-100 text-center text-white">
                           <i class="fas fa-search-plus fa-3x"></i>
                        </div>
                     </div> <img class="img-fluid"
                     src="${pageContext.request.contextPath}/resources/img/portfolio/${job.picture}"
                     alt="">
                     <hr class="style-one">
                     <p>
                        <c:out value="${job.ctitle}" />
                     </p>
                  </a>
               </div>
               <!-- Portfolio Modal 1 -->
               <div class="portfolio-modal mfp-hide" id="${job.ccode}">
                  <div class="portfolio-modal-dialog bg-white">
                     <a class="close-button d-none d-md-block portfolio-modal-dismiss"
                        href="#"> <i class="fa fa-3x fa-times"></i>
                     </a>
                     <div class="container text-center">
                        <div class="row">
                           <div class="col-lg-8 mx-auto">
                              <img class="img-fluid"
                                 src="${pageContext.request.contextPath}/resources/img/portfolio/${job.picture}"
                                 alt="">
                              <hr class="style-one">
                              <p class="text-secondary text-uppercase mb-0">
                                 <c:out value="${job.ctitle}" />
                              </p>
                              <hr class="star-dark mb-5">
                              <table
                                 style="margin: auto auto; text-align: center; vertical-align: middle;"
                                 class="table table-bordered table-light">
                                 <tr>
                                    <td><p class = "table">기업명</p></td>
                                    <td><p><c:out value="${job.ctitle}"/></p></td>
                                 </tr>

                                 <tr>
                                    <td><p class = "table">대표자</p></td>
                                    <td><p><c:out value="${job.cname}"/></p></td>
                                 </tr>

                                 <tr>
                                    <td><p class = "table">홈페이지</p></td>
                                    <td><p><c:out value="${job.cpage}"/></p></td>
                                 </tr>

                                 <tr>
                                    <td><p class = "table">직원수</p></td>
                                    <td><p><c:out value="${job.cnum}"/></p></td>
                                 </tr>

                                 <tr>
                                    <td><p class = "table">위치</p></td>
                                    <td><p><c:out value="${job.clocation}"/></p></td>
                                 </tr>

                                 <tr>
                                    <td><p class = "table">분야</p></td>
                                    <td><p><c:out value="${job.carea}"/></p></td>
                                 </tr>

                                 <tr>
                                    <td><p class = "table">주업무</p></td>
                                    <td><p><c:out value="${job.cposition}"/></p></td>
                                 </tr>

                                 <tr>
                                    <td><p class = "table">근무지</p></td>
                                    <td><p><c:out value="${job.cwlocation}"/></p></td>
                                 </tr>

                                 <tr>
                                    <td><p class = "table">기본금</p></td>
                                    <td><p><c:out value="${job.csalary}"/></p></td>
                                 </tr>
                                 <tr>
                                    <td><p class = "table">업무시간</p></td>
                                    <td><p><c:out value="${job.ctime}"/></p></td>
                                 </tr>
                                 <tr>
                                    <td><p class = "table">기타사항</p></td>
                                    <td><p><c:out value="${job.calse}"/></p></p></td>
                                 </tr>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </c:forEach>




         </div>
      </div>
   </section>



   <c:import url="footer.jsp" />



   <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
   <div class="scroll-to-top d-lg-none position-fixed ">
      <a class="js-scroll-trigger d-block text-center text-white rounded"
         href="#page-top"> <i class="fa fa-chevron-up"></i>
      </a>
   </div>

   <!-- Portfolio Modals -->

   <!-- Portfolio Modal 1 -->
   <div class="portfolio-modal mfp-hide" id="portfolio-modal-1">
      <div class="portfolio-modal-dialog bg-white">
         <a class="close-button d-none d-md-block portfolio-modal-dismiss"
            href="#"> <i class="fa fa-3x fa-times"></i>
         </a>
         <div class="container text-center">
            <div class="row">
               <div class="col-lg-8 mx-auto">
                  <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                  <hr class="star-dark mb-5">
                  <img class="img-fluid mb-5"
                     src="${pageContext.request.contextPath}/resources/img/portfolio/cabin.png"
                     alt="">
                  <p class="mb-5">Lorem ipsum dolor sit amet, consectetur
                     adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
                     magnam, recusandae quos quis inventore quisquam velit asperiores,
                     vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                  <a
                     class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
                     href="#"> <i class="fa fa-close"></i> Close Project
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Portfolio Modal 2 -->
   <div class="portfolio-modal mfp-hide" id="portfolio-modal-2">
      <div class="portfolio-modal-dialog bg-white">
         <a class="close-button d-none d-md-block portfolio-modal-dismiss"
            href="#"> <i class="fa fa-3x fa-times"></i>
         </a>
         <div class="container text-center">
            <div class="row">
               <div class="col-lg-8 mx-auto">
                  <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                  <hr class="star-dark mb-5">
                  <img class="img-fluid mb-5"
                     src="${pageContext.request.contextPath}/resources/img/portfolio/cake.png"
                     alt="">
                  <p class="mb-5">Lorem ipsum dolor sit amet, consectetur
                     adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
                     magnam, recusandae quos quis inventore quisquam velit asperiores,
                     vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                  <a
                     class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
                     href="#"> <i class="fa fa-close"></i> Close Project
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Portfolio Modal 3 -->
   <div class="portfolio-modal mfp-hide" id="portfolio-modal-3">
      <div class="portfolio-modal-dialog bg-white">
         <a class="close-button d-none d-md-block portfolio-modal-dismiss"
            href="#"> <i class="fa fa-3x fa-times"></i>
         </a>
         <div class="container text-center">
            <div class="row">
               <div class="col-lg-8 mx-auto">
                  <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                  <hr class="star-dark mb-5">
                  <img class="img-fluid mb-5"
                     src="${pageContext.request.contextPath}/resources/img/portfolio/circus.png"
                     alt="">
                  <p class="mb-5">Lorem ipsum dolor sit amet, consectetur
                     adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
                     magnam, recusandae quos quis inventore quisquam velit asperiores,
                     vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                  <a
                     class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
                     href="#"> <i class="fa fa-close"></i> Close Project
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Portfolio Modal 4 -->
   <div class="portfolio-modal mfp-hide" id="portfolio-modal-4">
      <div class="portfolio-modal-dialog bg-white">
         <a class="close-button d-none d-md-block portfolio-modal-dismiss"
            href="#"> <i class="fa fa-3x fa-times"></i>
         </a>
         <div class="container text-center">
            <div class="row">
               <div class="col-lg-8 mx-auto">
                  <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                  <hr class="star-dark mb-5">
                  <img class="img-fluid mb-5"
                     src="${pageContext.request.contextPath}/resources/img/portfolio/game.png"
                     alt="">
                  <p class="mb-5">Lorem ipsum dolor sit amet, consectetur
                     adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
                     magnam, recusandae quos quis inventore quisquam velit asperiores,
                     vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                  <a
                     class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
                     href="#"> <i class="fa fa-close"></i> Close Project
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Portfolio Modal 5 -->
   <div class="portfolio-modal mfp-hide" id="portfolio-modal-5">
      <div class="portfolio-modal-dialog bg-white">
         <a class="close-button d-none d-md-block portfolio-modal-dismiss"
            href="#"> <i class="fa fa-3x fa-times"></i>
         </a>
         <div class="container text-center">
            <div class="row">
               <div class="col-lg-8 mx-auto">
                  <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                  <hr class="star-dark mb-5">
                  <img class="img-fluid mb-5"
                     src="${pageContext.request.contextPath}/resources/img/portfolio/safe.png"
                     alt="">
                  <p class="mb-5">Lorem ipsum dolor sit amet, consectetur
                     adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
                     magnam, recusandae quos quis inventore quisquam velit asperiores,
                     vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                  <a
                     class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
                     href="#"> <i class="fa fa-close"></i> Close Project
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Portfolio Modal 6 -->
   <div class="portfolio-modal mfp-hide" id="portfolio-modal-6">
      <div class="portfolio-modal-dialog bg-white">
         <a class="close-button d-none d-md-block portfolio-modal-dismiss"
            href="#"> <i class="fa fa-3x fa-times"></i>
         </a>
         <div class="container text-center">
            <div class="row">
               <div class="col-lg-8 mx-auto">
                  <h2 class="text-secondary text-uppercase mb-0">Project Name</h2>
                  <hr class="star-dark mb-5">
                  <img class="img-fluid mb-5"
                     src="${pageContext.request.contextPath}/resources/img/portfolio/submarine.png"
                     alt="">
                  <p class="mb-5">Lorem ipsum dolor sit amet, consectetur
                     adipisicing elit. Mollitia neque assumenda ipsam nihil, molestias
                     magnam, recusandae quos quis inventore quisquam velit asperiores,
                     vitae? Reprehenderit soluta, eos quod consequuntur itaque. Nam.</p>
                  <a
                     class="btn btn-primary btn-lg rounded-pill portfolio-modal-dismiss"
                     href="#"> <i class="fa fa-close"></i> Close Project
                  </a>
               </div>
            </div>
         </div>
      </div>
   </div>

   <!-- Bootstrap core JavaScript -->

   <script src="<c:url value="/resources/vendor/jquery/jquery.min.js"/>"></script>
   <script
      src="<c:url value="/resources/vendor/bootstrap/js/bootstrap.bundle.min.js" />"></script>
   <!-- Plugin JavaScript -->

   <script
      src="<c:url value="/resources/vendor/jquery-easing/jquery.easing.min.js"/>"></script>

   <script
      src="<c:url value="/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"/>"></script>

   <!-- Contact Form JavaScript -->

   <script src="<c:url value="/resources/js/jqBootstrapValidation.js"/>"></script>

   <script src="<c:url value="/resources/js/contact_me.js"/>"></script>
   <!-- Custom scripts for this template -->

   <script src="<c:url value="/resources/js/freelancer.min.js"/>"></script>
</body>

</html>
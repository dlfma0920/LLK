<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<style>
p {
   font-family: 'Do Hyeon', sans-serif;
   font-size: 16px;
   color: #555555;
}

p.table {
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
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <br>
   <h2 class="text-center text-uppercase text-secondary mb-0">마이페이지</h2>
   <hr class="star-dark mb-5">

   <div class="container text-center">
      <div class="row">
         <div class="col-lg-8 mx-auto">
            <table
               style="margin: auto auto; text-align: center; vertical-align: middle;"
               class="table table-bordered table-light">
               <tr>
                  <td><a class="portfolio-item d-block mx-auto"
                     href="modifyUserPage.do?id=${sessionScope.session.id}">

                        <button type="button" class="btn btn-dark btn-sm">회원
                           정보 수정</button>
                  </a></td>
                  <td><a class="portfolio-item d-block mx-auto"
                     href="deleteUserPage.do">
                        <button type="button" class="btn btn-dark btn-sm">회원 탈퇴</button>
                  </a></td>
                  <td><a class="portfolio-item d-block mx-auto"
                     href="#portfolio-modal-4">
                        <button type="button" class="btn btn-dark btn-sm">이력서
                           등록</button>
                  </a></td>
                  <td><a class="portfolio-item d-block mx-auto"
                     href="#portfolio-modal-5">
                        <button type="button" class="btn btn-dark btn-sm">추가 기능</button>
                  </a></td>
               </tr>
               
               
               <tr>
                  <td>아이디></td><td><p>${sessionScope.session.id}</p></td>
                  <td><p></p></td>
               </tr>

               <tr>
                  <td>이름></td><td><p>${sessionScope.session.name}</p></td>
                  <td><p></p></td>
               </tr>
               <tr>
                  <td>이메일></td><td><p>${sessionScope.session.email}</p></td>
                  <td><p></p></td>
               </tr>
               <tr>
                  <td>H.P></td><td><p>${sessionScope.session.phone}</p></td>
                  <td><p></p></td>
               </tr>
              
            </table>
      <hr class="style-one">
         </div>
      </div>
   </div>
   
   
   <c:import url="footer.jsp" />
</body>
</html>
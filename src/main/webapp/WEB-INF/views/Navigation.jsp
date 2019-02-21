<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="EUC-KR">

 

   <!-- Bootstrap core CSS -->

    

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

  <link href="https://fonts.googleapis.com/css?family=Sunflower:300|Oswald|Black+Han+Sans|Do+Hyeon" rel="stylesheet">

      <!-- Custom fonts for this template -->

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css">

    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">

    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

 

    

 

    <!-- Plugin CSS -->

 

      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css">

   

 

    <!-- Custom styles for this template -->

      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/freelancer.min.css">

      

      

 

<style>

 

p {

   font-family: 'Do Hyeon', sans-serif;

   font-size: 16px;

   color: #555555;

}

p.table{

   font-family: 'Black Han Sans', sans-serif;

}

p.board{

	font-family: 'Sunflower';

	color:#ffffff;

	font-size: 20px;

}

p.warning{

   font-size: 40px;

   color: #ff0000;

}p.warningbutton{

   font-size: 20px;

   color: #ffffff;

}

p.foot {

  	font-family: 'Oswald', sans-serif;

  	font-size : 20px;

  	color : #ffffff;

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
<body>
   <!-- Navigation -->
    <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
      <div class="container">
        <a class="navbar-brand js-scroll-trigger" href="#page-top">잡 서포팅 시스템&nbsp${sessionScope.session.name}</a>
       
        <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="jobinfoList.do">기업정보</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="board.do">자유게시판</a>
            </li>
           <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="myPage.do">마이페이지</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="logout.do">로그아웃</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>

</body>
</html>
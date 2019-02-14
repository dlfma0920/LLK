<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>LLK</title>
<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css">

  <!-- Custom fonts for this template -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">

  <!-- Plugin CSS -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/freelancer.min.css" rel="stylesheet">

  <style>
  	p {
  		font-family: 'Oswald', sans-serif;
  		font-size : 20px;
  	}
  	p.a{
  		color : black;
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
  
    <script>
	function loginPage(){
		window.location.href = '';
	
	}
  </script>
</head>

<body id="page-top">

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
    <div class="container">
      <a class="navbar-brand js-scroll-trigger" href="#page-top">Welcome new user!</a>
      <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary text-white rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        Menu
        <i class="fas fa-bars"></i>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item mx-0 mx-lg-1">
            <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#submit">Submit</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>

  <!-- Header -->
  <header class="masthead bg-primary text-white text-center">
    <div class="container">
      <img class="img-fluid mb-5 d-block mx-auto" src="resources/img/img.png" alt="">
      <h1 class="text-uppercase mb-0">Submit</h1>
      <hr class="star-light">
      <h2 class="font-weight-light mb-0">please enter your info!</h2>
    </div>
  </header>

  <!-- submit Section -->
  <section class="bg-primary text-white mb-0" id="submit">
    <div class="container">
    <form action="signInTry.do" method="post">
      <h2 class="text-center text-uppercase text-white">Submit</h2>
      <hr class="star-light mb-5">
      <div class="text-center mt-4">
 
	    <table style="margin:auto auto; text-align:center; vertical-align:middle;" class = "table table-bordered table-light">
		  <tr>
			<td><p class = "a">Id</p></td>
			<td> <input type="text" class = "form-control" name="id" placeholder="Enter id"/></td>
		  </tr>
		  
		  <tr>
			<td><p class = "a">Password</p></td>
			<td> <input type="password" class = "form-control" name="pwd" placeholder="Enter password"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Name</p></td>
			<td> <input type="text" class = "form-control" name="name" placeholder="Enter name"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Birth</p></td>
			<td> <input type="text" class = "form-control" name="birth" placeholder="Enter birthday"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Gender</p></td>
			<td> 
			  <div class="btn-group" role="group" aria-label="기본 예제">
  				<button type="button" class="btn btn-secondary active" name="sex" value=0>M</button>
  				<button type="button" class="btn btn-secondary" name="sex" value=1>W</button>
	  		  </div>
		  </tr>

		  <tr>
			<td><p class = "a">E-mail</p></td>
			<td> <input type="email" class = "form-control" name="email" placeholder="Enter email"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Phone</p></td>
			<td> <input type="text" class = "form-control" name="phone" placeholder="Enter phonenumber"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Country</p></td>
			<td> <input type="text" class = "form-control" name="country" placeholder="Enter contry"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Authority</p></td>
			<td>
			  <div class="btn-group" role="group" aria-label="기본 예제">
  				<button type="button" class="btn btn-secondary active" name="flag" value=0>User</button>
  				<button type="button" class="btn btn-secondary" name="flag" value=1>Administrater</button>
			  </div>

		  </tr>
		</table> 
	  <hr class="style-one">
        <input type="submit" class="btn btn-outline-light btn-sm" value = "Submit"/>
        <input type="button" class="btn btn-outline-light btn-sm" value = "Cencel" onclick="loginPage();"/>
     	</div>
     	</form>
    </div>

  </section>

  <!-- Footer -->
  <footer class="footer text-center">
    <div class="container">
      <div class="row">
        <div class="col-md-4">
          <h4 class="text-uppercase mb-4">Lee Donggeon</h4>
          <p class="lead mb-0">ChunBuk University
            <br>Software</p>
        </div>
        <div class="col-md-4">
          <h4 class="text-uppercase mb-4">Lee Chanjoo</h4>
          <p class="lead mb-0">ChunBuk University
            <br>Software</p>
        </div>
        <div class="col-md-4">
          <h4 class="text-uppercase mb-4">Gang Gyumin</h4>
          <p class="lead mb-0">ChunBuk University
            <br>International Management</p>
        </div>
      </div>
    </div>
  </footer>

  <div class="copyright py-4 text-center text-white">
    <div class="container">
      <small>Copyright &copy; Your Website 2019</small>
    </div>
  </div>

  <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
  <div class="scroll-to-top position-fixed ">
    <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
      <i class="fa fa-chevron-up"></i>
    </a>
  </div>

  <!-- Bootstrap core JavaScript -->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>
  <script src="resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

  <!-- Contact Form JavaScript -->
  <script src="resources/js/jqBootstrapValidation.js"></script>
  <script src="resources/js/contact_me.js"></script>

  <!-- Custom scripts for this template -->
  <script src="resources/js/freelancer.min.js"></script>
  
</body>

</html>
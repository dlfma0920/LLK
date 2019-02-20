<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
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
<body id="page-top">
	<c:import url="Navigation.jsp" /> 
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  <!-- submit Section -->
  <section class="bg-primary text-white mb-0" id="submit">
    <div class="container">
    <form action="signInTry.do" method="post">
      <h2 class="text-center text-uppercase text-white">이력서 등록</h2>
      <hr class="star-light mb-5">
      <div class="text-center mt-4">
 
	    <table style="margin:auto auto; text-align:center; vertical-align:middle;" class = "table table-bordered table-light">
		  <tr>
			<td><p class = "a"></p></td>
			<td> <input type="text" class = "form-control" id=id name="id" placeholder="Enter id"></td>
		  </tr>
		  
		  <tr>
			<td><p class = "a">Password</p></td>
			<td> <input type="password" class = "form-control" id=pwd name="pwd" placeholder="Enter password"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Name</p></td>
			<td> <input type="text" class = "form-control" id= name name="name" placeholder="Enter name"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Birth</p></td>
			<td> <input type="text" class = "form-control" id= birth name="birth" placeholder="Enter birthday"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Gender</p></td>
			<td> 
			  <div class="btn-group" role="group" aria-label="기본 예제">
  				<button type="button" class="btn btn-secondary active" id= sex name="sex" value=0>M</button>
  				<button type="button" class="btn btn-secondary" id = sex name="sex" value=1>W</button>
	  		  </div>
		  </tr>

		  <tr>
			<td><p class = "a">E-mail</p></td>
			<td> <input type="email" class = "form-control" id= email name="email" placeholder="Enter email"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Phone</p></td>
			<td> <input type="text" class = "form-control" id=phone name="phone" placeholder="Enter phonenumber"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Country</p></td>
			<td> <input type="text" class = "form-control" id=country name="country" placeholder="Enter contry"/></td>
		  </tr>

		  <tr>
			<td><p class = "a">Authority</p></td>
			<td>
			  <div class="btn-group" role="group" aria-label="기본 예제">
  				<button type="button" class="btn btn-secondary active" id=flag name="flag" value=0>User</button>
  				<button type="button" class="btn btn-secondary" id=flag name="flag" value=1>Administrater</button>
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

	<c:import url="footer.jsp" /> 
</body>

</html>
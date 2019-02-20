<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>

<body id="page-top">
	<c:import url="Navigation.jsp" /> 
	<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
<section class="portfolio" id="portfolio">
      <div class="container">
        <h2 class="text-center text-uppercase text-secondary mb-0">마이페이지</h2>
        <hr class="star-dark mb-5">
        <div class="row">
        
        
        
       
          회원 탈퇴시 잡 서포팅 시스템 서비스 내 모든 정보가 삭제 되며 , 이후 복구가 되지않습니다. 계속 진행하시겠습니까?
           <a href="deleteUserTry.do?id=${sessionScope.session}"><button >진행</button></a>
            <button>취소</button>
    </section>

	<c:import url="footer.jsp" /> 
</body>

</html>
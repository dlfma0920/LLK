<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
   <br>
   <br>
   <br>
   <br>
   <br>
   <section class="portfolio" id="portfolio">
      <div class="container">
         <h2 class="text-center text-uppercase text-secondary mb-0">����������</h2>
         <hr class="star-dark mb-5">
               <p class="warning text-center">ȸ�� Ż��� �� ������ �ý��� ���� �� ��� ������ ���� �Ǹ� , ���� ������ �����ʽ��ϴ�. ���
                  �����Ͻðڽ��ϱ�?</p>
                  <div class = "text-center">
               <a href="deleteUserTry.do?id=${sessionScope.session.id}">
                  <button type="button" class="btn btn-warning btn-block"><p class = "warningbutton">����</p></button>
               </a>
               <a href="myPage.do?id=${sessionScope.session.id}">
               <button type="button" class="btn btn-secondary btn-block"><p class = "warningbutton">���</p></button>
               </a>
               </div>
            
      </div>
   </section>

   <c:import url="footer.jsp" />
</body>

</html>
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
   <br>
   <br>
   <br>
   <br>


   <div class="container">
      <div class="row align-items-end">
         <table
            style="margin: auto auto; text-align: center; vertical-align: middle;"
            class="table table-bordered table-light">

            <thead class = "thead-dark">
            <tr>
               <th style="width:10%"><p class = "board">번호</p></th>
               <th><p class = "board">제목</p></th>
               <th style="width:10%"><p class = "board">작성자</p></th>
            </tr>
            </thead>
            <c:forEach var="board" items="${list}">
               <tr>
                  <td><p style = "font-size : 20px">${board.bcode}</p></td>
                  <td><p style = "font-size : 20px"><a href="detailBoard.do?bcode=${board.bcode}">${board.btitle}</a></p></td>
                  <td><p style = "font-size : 20px">${board.bid}</p></td>
               </tr>


            </c:forEach>


         </table>
      </div>
   </div>
<br>
<br>
<br>
<br>



   <c:import url="footer.jsp" />
</body>

</html>
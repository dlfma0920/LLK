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

       				<div>
		            <table border=1 style="margin-left: auto; margin-right: auto;">
		           
		            <tr>
		            <td>게시글번호</td> 
		            <td>제목</td> 
		            <td>작성자</td>
		            </tr>
		            <c:forEach var="board" items="${list}">
		            <tr>
		            <td>${board.bcode}</td>
		            <td><a href="detailBoard.do?bcode=${board.bcode}">${board.btitle}</a></td>
		            <td>${board.bid}</td>
		            </tr>
		            
		            
		            </c:forEach>  
		           
		            
		            </table>		            
		             </div>
		        
       	
       

	<c:import url="footer.jsp" /> 
</body>

</html>
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
       				<form action="boardModifyTry.do" method="post">
       				<input type="hidden" id="bcode" name="bcode" value='${detail.bcode}'>
		            <table style="margin-left: auto; margin-right: auto;">
		           
		            <tr>
		            <td>제목</td>
		            <td><input type="text" value='${detail.btitle}' id=btitle name=btitle size='41' /></td> 
		            </tr>
		            
		             <tr>
		            <td>작성자</td>
		             <td><input type="text" value='${detail.bid}' id=bid name=bid size='41' /></td> 
		      
		            </tr>
		            
		             <tr>
		            <td>내용</td>
		             <td>
		             <textarea cols="40" rows="8" id=bnote name=bnote>${detail.bnote}</textarea></td> 
		         
		            </tr>
		            	           
		            <tr>
		            <td colspan=2>
   					<input type="submit" value="수정 완료">
					
		            </td>
		            </tr>
		            
		             <tr>
		            <td colspan=2>
		            <a href='board.do'>목록으로 돌아가기</a>
					</td>
		            </tr>
		            </table>
		            </form>		            
		             </div>
		        	
		        	
       	
       

	<c:import url="footer.jsp" /> 
</body>

</html>
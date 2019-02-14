<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<html>
<head>
	<title>로그인 페이지</title>
<script>
function signIn(){
	window.location.href = 'employerSignInForm.do';
	
}
</script>

<script type="text/javascript"> 
if("${msg}" != ""){ //로그인 실패시 메세지를 출력 하는 부분
alert("${msg}");
"${msg}" = "";
}
</script>
</head>
<body>
<form method="post" action="loginTry.do" id="loginForm" > <!-- 로그인 정보 입력 폼 -->
<table style="margin:0 auto;text-align:center;" border=1>
<tr>
<td><b>ID</b></td>
<td> <input type="text"  name="id"/></td>
</tr>
<tr>
<td><b>비밀번호</b></td>
<td> <input type="password" name="pwd"/></td>
</tr>

<tr>
<td><b>사용자 유형</b></td>
<td> <input type="radio" name="flag" value=0/>회원<input type="radio" name="flag" value=1/>관리자</td>
</tr>
<tr>
<td>
<input type="submit" value="로그인"/>
<input type="button" value="회원가입" onclick="signIn()"/>

</td>
</tr>
</table>
</form>

</body>
</html>

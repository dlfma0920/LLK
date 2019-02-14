<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
</head>
<body>

<form:form commandName="employerVO" action="signInTry.do" name="employerVO" method="post">
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
<td><b>이름</b></td>
<td> <input type="text" name="name"/></td>
</tr>

<tr>
<td><b>생일</b></td>
<td> <input type="text" name="birth"/></td>
</tr>

<tr>
<td><b>성별</b></td>
<td> <input type="radio" name="sex" value=0/>남자<input type="radio" name="sex" value=1/>여자</td>

</tr>

<tr>
<td><b>이메일</b></td>
<td> <input type="email" name="email"/></td>
</tr>

<tr>
<td><b>전화</b></td>
<td> <input type="text" name="phone"/></td>
</tr>

<tr>
<td><b>국적</b></td>
<td> <input type="text" name="country"/></td>
</tr>

<tr>
<td><b>사용자 유형</b></td>
<td> <input type="radio" name="flag" value=0/>회원<input type="radio" name="flag" value=1/>관리자</td>

</tr>
<tr>
<td>
<input type="submit" value="회원가입"/>
<input type="reset" value="초기화"/>

</td>
</tr>
</table>
</form:form>
</body>
</html>
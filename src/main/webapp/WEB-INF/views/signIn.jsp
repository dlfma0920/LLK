<%@ page contentType="text/html; charset=euc-kr" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
</head>
<body>

<form:form commandName="employerVO" action="signInTry.do" name="employerVO" method="post">
<table style="margin:0 auto;text-align:center;" border=1>
<tr>
<td><b>ID</b></td>
<td> <input type="text"  name="id"/></td>
</tr>
<tr>
<td><b>��й�ȣ</b></td>
<td> <input type="password" name="pwd"/></td>
</tr>

<tr>
<td><b>�̸�</b></td>
<td> <input type="text" name="name"/></td>
</tr>

<tr>
<td><b>����</b></td>
<td> <input type="text" name="birth"/></td>
</tr>

<tr>
<td><b>����</b></td>
<td> <input type="radio" name="sex" value=0/>����<input type="radio" name="sex" value=1/>����</td>

</tr>

<tr>
<td><b>�̸���</b></td>
<td> <input type="email" name="email"/></td>
</tr>

<tr>
<td><b>��ȭ</b></td>
<td> <input type="text" name="phone"/></td>
</tr>

<tr>
<td><b>����</b></td>
<td> <input type="text" name="country"/></td>
</tr>

<tr>
<td><b>����� ����</b></td>
<td> <input type="radio" name="flag" value=0/>ȸ��<input type="radio" name="flag" value=1/>������</td>

</tr>
<tr>
<td>
<input type="submit" value="ȸ������"/>
<input type="reset" value="�ʱ�ȭ"/>

</td>
</tr>
</table>
</form:form>
</body>
</html>
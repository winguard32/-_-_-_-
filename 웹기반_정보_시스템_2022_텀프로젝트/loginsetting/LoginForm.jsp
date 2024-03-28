<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="CicError.jsp" import="termproject.loginsetting.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인홈</title>
</head>

<BODY bgcolor="#FFFFFF">
<center>
<H2>로그인</H2>
<HR>

<form method="post" action="Login.jsp" name="form1">
	<table width="250" border="1" align = "center" cellspacing="0" cellpadding="5">
	
		<tr>
		<td colspan="2" align="center">로그인</td>
		</tr>
		<tr>
			<td> 아이디</td>
			<td><input type="text" name="userid" size 10></td>
		</tr>
		<tr>
			<td> 패스워드</td>
			<td><input type="password" name="passwd" size 10></td>
		</tr>
		<tr>
			<td colspan="2" align="center">
				<input type="submit" name="Submit" value="로그인"></td>
		</tr>
</table>
</form>

현재 날짜와 시간은 : <%=new java.util.Date() %>

</center>
</body>
</html>
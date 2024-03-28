<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="CicError.jsp" import="termproject.loginsetting.*"%>
<jsp:useBean id="login" class="termproject.loginsetting.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인처리</title>
</head>
<body>
<center>
<H2>로그인처리</H2>
<HR>

<%
	if(!login.checkUser()) {
		out.println("로그인 실패!!");
	}

	else {
		out.println("로그인 성공!");
		%>
<BR>
<a href="CicwebForm.jsp">게시판이동</a><P>
		<%
	}
%>

<HR>
사용자 아이디: <jsp:getProperty name="login" property="userid"/><BR>
사용자 패스워드: <jsp:getProperty name="login" property="passwd"/>

</center>
</body>
</html>
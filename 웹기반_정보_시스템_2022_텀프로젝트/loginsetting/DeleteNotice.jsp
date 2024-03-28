<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="CicError.jsp" import="termproject.loginsetting.*"%>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addB" class="termproject.loginsetting.AddBean"/>
<jsp:useBean id="am" class="termproject.loginsetting.AddManager" scope="application"/>
	<jsp:setProperty property="ab_id" name="addB"/>
	<jsp:setProperty property="username" name="addB"/>
	<jsp:setProperty property="headline" name="addB"/>
	<jsp:setProperty property="memo" name="addB"/> 
	<jsp:setProperty property="createdate" name="addB"/> 
	
<%
	int basic_number = 0;
	basic_number = Integer.parseInt(request.getParameter("id"));
	am.removelist(basic_number);
%>

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>삭제 확인</title>
	</head>
	<body>
		<div align="center">
			<H2>삭제되었습니다.</H2>
			<a href="NoticeCicweb.jsp">목록 보기</a>
		</div>
	</body>
</html>
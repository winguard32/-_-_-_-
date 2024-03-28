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
	am.updatelist(addB.getAb_id(),addB);
%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>게시판 등록 확인</title>
	</head>
	<body>
		<div align="center">
			<H2>게시판 등록 확인</H2>
			
			이름 : <jsp:getProperty property="username" name="addB"/><P>
			제목 : <%=addB.getHeadline() %><P>
			내용 : <%=addB.getMemo() %> <P>
			
			<HR>
			<a href="NoticeCicweb.jsp">목록 보기</a>
		</div>
	</body>
</html>
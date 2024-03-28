<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="CicError.jsp" import="termproject.loginsetting.*"%>
<!DOCTYPE html>
<jsp:useBean id="addB" class="termproject.loginsetting.AddBean"/>
<jsp:useBean id="am" class="termproject.loginsetting.AddManager" scope="application"/>

<HTML>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<TITLE>게시판</TITLE>
</HEAD>
<BODY>
	<div align="center">
<H2>게시판등록 등록</H2>
<HR>
<form name=form1 method="post" action=WriteCic.jsp>
	<table border=1 cellspacing="1" cellpadding="5">
		<tr>
			<td>번 호</td>
			<td>
	<%
		int number=0;
		for(AddBean ab : am.getAddList()) {
			number = number+1;
		}
	%>
			<%= am.getAddList().size() %>
			<input type="hidden" name="ab_id" value="<%= am.getAddList().size() %>"/>
			</td>
		</tr>
		<tr>
			<td>이 름</td>
			<td><input type=text size=20 name=username></td>
		</tr>
		<tr>
			<td>제 목</td>
			<td><input type=text size=20 name=headline></td>
		</tr>
		<tr>
			<td>내 용</td>
			<td><input type=text size=50 name=memo></td>
		</tr>
		<tr>
			<td>작성일</td>
			<td>
			<%=new java.util.Date() %>
			<input type="hidden" name="creatdate" value="<%=new java.util.Date()%>"/>
			</td>
		</tr>

		<tr>
			<td colspan=2 align=center>
			<input type=submit value="확인">
			<input type=reset value="취소">
			</td>
		</tr>
	</table>

</form>
</div>
</BODY>
</HTML>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="CicError.jsp" import="termproject.loginsetting.*"%>

<jsp:useBean id="am" class="termproject.loginsetting.AddManager" scope="application"/>
<jsp:useBean id="login" class="termproject.loginsetting.LoginBean" scope="page" />
<jsp:setProperty name="login" property="*"/>

<!DOCTYPE html>
<html>

<head>
	<script type="text/javascript">
		function check(ab_id) {
			pwd = prompt('수정/삭제 하려면 비밀번호를 넣으세요');
			document.location.href="CicControl.jsp?action=edit&id="+ab_id+"&upasswd="+pwd;
		}
	</script>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>게시판:목록</title>
</head>

<body>
	<div align=center>
	<H2>게시판:목록</H2>
<HR>
	<a href="CicwebForm.jsp">게시판 등록</a><P>
	<table border=1 width=500>
		<tr><td>번호</td><td>이름</td><td>제목</td><td>내용</td><td>작성일</td></tr>
		<%
			for(AddBean ab : am.getAddList()) {
			%>
			<tr>
				<td><a href="javascript:check(<%=ab.getAb_id()%>)"><%=ab.getAb_id() %></a></td>
				<td><%=ab.getUsername() %></td>
				<td><%=ab.getHeadline() %></td>
				<td><%=ab.getMemo()%></td>
				<td><%=ab.getCreatedate() %></td>
			</tr>
			<%	
			}
		%>
	</table>
</div>
<HR>
</body>
</html>
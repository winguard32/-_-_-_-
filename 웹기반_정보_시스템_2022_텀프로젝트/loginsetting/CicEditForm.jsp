<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="CicError.jsp" import="termproject.loginsetting.*"%>
<!DOCTYPE HTML>
<jsp:useBean id="am" class="termproject.loginsetting.AddManager" scope="application"/>
<html>
<head>

	<script type="text/javascript">
		function delcheck(ab_id) {
			result = confirm("정말로 삭제하시겠습니까 ?");
		
			if(result == true){
//				document.location.href="CicControl.jsp&id="+ab_id;
				document.location.href="CicControl.jsp?action=delete&id="+ab_id;
//				document.location.href="NoticeCicweb.jsp";
			}
			return;
		}
	</script>
	
	
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>수정화면</title>
</head>
<jsp:useBean id="addB" class="termproject.loginsetting.AddBean"/>

<body>
<div align="center">
<H2>수정화면 </H2>
<HR>

[<a href="NoticeCicweb.jsp">게시판 목록으로</a>] <p>
<%
	AddBean abean = (AddBean)request.getAttribute("abean");
%>
<form name=form1 method=post action=EditNotice.jsp>
	<input type=hidden name="ab_id" value="<%=abean.getAb_id()%>">

<table border="1">

	<tr>
		<th>이 름</th>
		<td><input type="text" name="username" value="<%=abean.getUsername() %>"></td>
	</tr>
  
	<tr>
		<th>제 목</th>
		<td><input type="text" name="headline" value="<%=abean.getHeadline() %>"></td>
	</tr>
  
	<tr>
		<th>내 용</th>
		<td><input type="text" name="memo" value="<%=abean.getMemo() %>"></td>
	</tr>
	
	<tr>
		<td>작성일</td>
		<td>
		<%=new java.util.Date() %>
		<input type="hidden" name="creatdate" value="<%=new java.util.Date()%>"/>
		</td>
	</tr>
	<tr>
    <td colspan=2 align=center><input type=submit value="저장"><input type=reset value="취소"><input type="button" value="삭제" onClick="delcheck(<%=abean.getAb_id()%>)"></td>
	</tr>
</table>
</form>

</div>
</body>
</html>
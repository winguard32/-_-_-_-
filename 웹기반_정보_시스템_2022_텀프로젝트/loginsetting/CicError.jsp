<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<!DOCTYPE HTML>
<HTML>
	<body>
		<div align="center">
			<H2>게시판 에러</H2>
		<HR>
		<table cellpadding=5 width=400>
			<tr width=100% bgcolor="pink">
			<td>
				게시판 처리중 에러가 발생 했습니다.<BR>
				관리자에게 문의해 주세요..<BR>
				빠른시일내 복구하겠습니다.
				<HR>
					에러내용 : <%= exception%>
				<HR>
			</td>
			</tr>
		</table>
		</div>
	</body>
</HTML>
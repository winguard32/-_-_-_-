<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="CicError.jsp" import="termproject.loginsetting.*"%>

<!DOCTYPE HTML>
<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="am" class="termproject.loginsetting.AddManager" scope="application"/>
<jsp:useBean id="addB" class="termproject.loginsetting.AddBean"/>

<% 
	// 컨트롤러 요청 파라미터
	String action = request.getParameter("action");
	int basic_number = 0;
	
	basic_number = Integer.parseInt(request.getParameter("id"));
	
	
	// 게시판 수정 페이지 요청인 경우
	if(action.equals("edit")) {
		AddBean abean = am.getAdd(basic_number);
		if(!request.getParameter("upasswd").equals("1234")) {
			out.println("<script>alert('비밀번호가 틀렸습니다.!!');history.go(-1);</script>");
		}
		else {
			request.setAttribute("abean",abean);
			pageContext.forward("CicEditForm.jsp");
		}
	}
	
	
	// 게시판 삭제 요청인 경우
	else if(action.equals("delete")) {
		AddBean abean = am.getAdd(basic_number);
		request.setAttribute("abean",abean);
		request.setAttribute("id",request.getParameter("id"));
		pageContext.forward("DeleteNotice.jsp");
	}
	else {
		out.println("<script>alert('action 파라미터를 확인해 주세요!!!')</script>");
	}
%>
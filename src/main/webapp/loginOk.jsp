<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		
		String mid = request.getParameter("mid");
		String mpw = request.getParameter("mpw");
		
		request.setAttribute("memberPW", mpw);// EL표기법에서 바로 찍기위해
		
		if(mid.equals("tiger") && mpw.equals("12345")) {
			session.setAttribute("user", mid);
		}
		
	%>
	<h2>${sessionScope.user}님 로그인 환영합니다</h2>
	<h2>입력하신 비밀번호는 ${memberPW }</h2>
	
</body>
</html>
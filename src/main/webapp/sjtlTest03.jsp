<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri ="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 연습3</title>
</head>
<body>
	<%--java for문 --%>
	<%
		for(int i=0;i<10;i=i+2) {
			out.println(i + "<br>");
		}
	
	%>
	<%
		for(int i=1;i<=5;i++) {
	%>	
		<h1>안녕하세요</h1>
	<%	
		}
	%>
	<%	
		String[] strs = {"이순신","김유신","강감찬"};
		request.setAttribute("str1", strs);
	
			for(String str : strs) {
				out.println(str+"<br>");
			}
	%>
	
	<%--jstl for문 --%>
	<c:forEach var="i" begin="0" end="9" step="2">
		<h1>${i }</h1>
	</c:forEach>
	<c:forEach var="i" begin="1" end="5">
		<h1>안녕하세요</h1>
	</c:forEach>
	
	<ul>
		<c:forEach var="str" items="${str1 }">
			<li><h1>${str }</h1></li>
		</c:forEach>
	</ul>
	
	
	
</body>
</html>
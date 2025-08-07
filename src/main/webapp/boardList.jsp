<%@page import="com.LSM.dto.BoardDto"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<%@ taglib prefix="fn" uri="jakarta.tags.functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style>
    body {
      font-family: Arial, sans-serif;
    }

    table {
      width: 100%;
      border-collapse: collapse;
      margin-top: 30px;
    }

    th, td {
      padding: 12px 15px;
      text-align: left;
      border-bottom: 1px solid #ccc;
    }

    th {
      background-color: #f2f2f2;
      color: #333;
    }

    tr:hover {
      background-color: #f9f9f9;
    }

    td.title a {
      color: #004080;
      text-decoration: none;
    }

    td.title a:hover {
      text-decoration: underline;
    }

    .container {
      width: 90%;
      max-width: 1000px;
      margin: auto;
    }
  </style>
<title>자유 게시판</title>
</head>
<body>
	<%--게시판 글 리스트--%>
	<%
		//게시판 더미 데이터 만들기
		List<BoardDto> boardList = new ArrayList<BoardDto>();
		//게시글(BoardDto)를 여러개 담을 ArrayList 준비(선언)
		
		boardList.add(new BoardDto(1,"안녕하세요. 첫글입니다","이순신","2025-08-05"));
		boardList.add(new BoardDto(2,"안녕하세요. 길동입니다","홍길동","2025-08-05"));
		boardList.add(new BoardDto(3,"안녕하세요. 철수입니다","철수","2025-08-05"));
		boardList.add(new BoardDto(4,"안녕하세요. 짱구입니다","짱구","2025-08-05"));
		boardList.add(new BoardDto(5,"안녕하세요. 맹구입니다","맹구","2025-08-05"));
		
		request.setAttribute("boar", boardList);
	%>
	
	<h2>자유게시판 목록</h2>
	<hr>
	<table>
		<tr>
			<th>No.</th>
			<th>제목</th>
			<th>글쓴이</th>
			<th>날짜</th>
		</tr>
		
		<c:forEach var="boardDT" items="${boar }">
			<tr>
				<td>${boardDT.bnum }</td>
				<td>
				<c:choose>
				<c:when test="${fn:length(boardDT.btitle) > 40}">
							<a href="#">${fn:substring(boardDT.btitle, 0, 40)}...</a>
						</c:when>
				<c:otherwise>
					${boardDT.btitle }
				</c:otherwise>
				</c:choose>
				</td>
				<td>${boardDT.bwriter }</td>
				<td>${boardDT.bdate }</td>
			</tr>
		</c:forEach>
	
	</table>
	
</body>
</html>
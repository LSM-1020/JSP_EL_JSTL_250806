<%@page import="com.LSM.dto.ProductDto"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
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
<title>내 장바구니</title>
</head>
<body>
	<h2>내 장바구니 상품 목록</h2>
	<hr>
	
	<%
		ArrayList<ProductDto> cart = (ArrayList<ProductDto>) session.getAttribute("cart");
			
				request.setAttribute("cart", cart);
		%>
	
	<hr>
	<table>
		<tr>
			<th>No.</th>
			<th>상품종류</th>
			<th>색깔</th>
			<th>수량</th>
		</tr>
		
		<c:forEach var="productDto" items="${cart }" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td>${productDto.product }</td>
				<td>${productDto.color }</td>
				<td>${productDto.quantity }</td>
			</tr>
		</c:forEach>
	
	</table>
	<a href = "productList.jsp">상품 선택 페이지로 돌아가기</a>
	
</body>
</html>
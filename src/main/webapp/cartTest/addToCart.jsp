<%@page import="com.LSM.dto.ProductDto"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 추가</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
		
			String product = request.getParameter("product"); //장바구니 넣을 제품
			String color = request.getParameter("color");
			//String quantity = request.getParameter("quantity");
			//System.out.println(quantity);
			int quantity = Integer.parseInt(request.getParameter("quantity"));
			//모든 객체를 포함시키는 dto
			ArrayList<ProductDto> cart = (ArrayList<ProductDto>) session.getAttribute("cart"); 
			
			//기존 세션에 cart(Arraylist타입)가 존재하면 가져오기
			//첫번째 장바구니에 삽입시 cart->null => ArrayList<String> cart = null;
			
			if(cart == null) { //cart가 null값일때만 새로 생성
			cart = new ArrayList<ProductDto>();//새 장바구니 생성
			} //최초 상품 추가시에만 실행
			
			
			cart.add(new ProductDto(product,color,quantity));//Dto클래스 바로 생성
			
			request.setAttribute("product", new ProductDto(product,color,quantity));
			session.setAttribute("cart", cart); //세션에 상품 목록 저장
	%>
	<h2>장바구니에 ${product.product } ${product.color} ${product.quantity}추가 되었습니다</h2>
	<a href = "productList.jsp">상품 더 담기</a><hr><hr>
	<a href = "viewCart.jsp">장바구니 보기</a>
</body>
</html>
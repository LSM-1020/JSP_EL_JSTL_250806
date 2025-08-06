<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 선택</title>
</head>
<body>
	<h2>장바구니에 넣을 상품을 선택하세요</h2>
	<hr>
	<form action = "addToCart.jsp">
		상품 종류 :
		<select name = "product">
			<option value = "스마트폰">스마트폰</option>
			<option value = "노트북">노트북</option>
			<option value = "아이패드">아이패드</option>
			<option value = "무선이어폰">무선이어폰</option>
		</select>
		<br>
		상품 색상 :
		<select name = "color">
			<option value = "검정">검정</option>
			<option value = "회색">회색</option>
			<option value = "청색">청색</option>
		</select>
		<br>
		상품 수량 : <input type="text" name="quantity" size="2" value="1"><br>
		<input type="submit" value ="장바구니에 담기">
	</form>
	
</body>
</html>
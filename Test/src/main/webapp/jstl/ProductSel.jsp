<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch10:EL 예제</title>
</head>
<body>
<div align="center">
	<h2>ch10:EL 예제-상품선택</h2>
	<hr>
    <!-- EL사용해서 객체.변수이름 -->
    <!-- 앞 페이지인 ProduckList에서 객체 정의해둠(javabeans) -->
	1. 선택한 상품은 : ${param.sel} <br>
	2. num1 + num2 = ${product.num1+product.num2} <br>

	
	<!--1. 선택한 상품은 : <%= request.getParameter("sel") %><br>	
	<jsp:useBean id="product" class="taglib.Product" />
	2. num1 + num2 = <%= product.getNum1() + product.getNum2()%> <br>	
	-->

</div>
</body>
</html>
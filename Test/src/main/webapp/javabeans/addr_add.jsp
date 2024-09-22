<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="ch07.*"%>
<!DOCTYPE html>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<!-- useBean액션으로 자바빈즈 선언  코드 채우기-->
기

<%
		am.add(addr);
	%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ch07 : addr_add.jsp</title>
	<style>
		div {text-align: center;}

	</style>
</head>
<body>
	<div>
	<h2>등록내용</h2>
	이름 : <!--getProperty으로 이름 속성 가져오기--><P>
	전화번호 : <!--getProperty으로 전화번호 속성가져오기--><P>
	이메일 : <%=addr.getEmail() %> <P>
	성별 : <%=addr.getSex() %>
	<HR>
	<a href="addr_list.jsp">목록 보기</a>
</div>
</body>
</html>











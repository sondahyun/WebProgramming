<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="javabeans.*"%>
<!DOCTYPE html>
	<% request.setCharacterEncoding("UTF-8"); %>
	
	<!-- useBean액션으로 자바빈즈 선언  코드 채우기-->
	<!-- DO -->
	<jsp:useBean id="addr" class="javabeans.AddrBean"/>
	<jsp:setProperty name="addr" property="*"/>
	
	<!-- DAO -->
	<jsp:useBean id="am" class="javabeans.AddrManager" scope="application"/>
	
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
	<!--getProperty으로 이름 속성 가져오기-->
	이름 : <jsp:getProperty name="addr" property="username"/><P>
	<!--getProperty으로 전화번호 속성가져오기--><P>
	전화번호 : <jsp:getProperty name="addr" property="tel"/><BR>
	이메일 : <%=addr.getEmail() %> <P>
	성별 : <%=addr.getSex() %>
	<HR>
	<a href="addr_list.jsp">목록 보기</a>
</div>
</body>
</html>











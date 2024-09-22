<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="ch07.*" %>
<!DOCTYPE html>
<jsp:useBean id="am" class="ch07.AddrManager" scope="application"/>
<%
	request.setCharacterEncoding("UTF-8");
	//이름으로 주소록 검색하는 함수 호출하는 코드 작성
%>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>ch07 : sname.jsp</title>
	<style>
		div {text-align: center; }
	</style>
</head>
<body>
<div>
	<h2>등록내용</h2>
	이름 : <%=addr.getUsername() %><P>
	전화번호 : <%=addr.getTel() %><P>
	이메일 : <%=addr.getEmail() %> <P>
	성별 : <%=addr.getSex() %>
	<hr>
	<a href="addr_list.jsp">전체 목록 보기</a>
</div>
</body>
</html>
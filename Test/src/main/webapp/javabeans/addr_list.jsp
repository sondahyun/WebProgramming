<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="ch07.*"%>

<!DOCTYPE html>
<!-- 자바빈즈 선언 -->

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch07 : 주소록 목록</title>
<style>
	div {
		text-align:center;
	}
	table { 
		width: 500px;
		margin: 0px auto;
	}
	table, td {
		border: 1px solid;
		border-collapse: collapse;
	}
</style>
</head>
<body>
<div>
	<h2>주소록</h2>
	<hr>
	<a href="addr_form.html">주소추가</a><br>
	<table>
	<tr><td>이름</td><td>전화번호</td><td>이메일</td><td>성별</td></tr>
	<%
		for(AddrBean ab : am.getAddrList()) {
	%>
		<tr>
		<td><%=ab.getUsername() %></td>
		<td><%=ab.getTel() %></td>
		<td><%=ab.getEmail() %></td>
		<td><%=ab.getSex() %></td></tr>
	<%	
		}
	%>
	</table>
</div>
</body>
</html>



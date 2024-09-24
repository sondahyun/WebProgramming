<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>ch11 " out</title>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
<h3>&lt;c:out&gt;</h3>
<table>
	<c:forEach var="member" items="${members}">
		<tr>
			<td>${member.name}</td>
			<td><c:out value="${member.email}" escapeXml="false">
				<font color=red>email 없음</font>
				</c:out>
			</td>
		</tr>
	</c:forEach>
</table>
</body>
</html>
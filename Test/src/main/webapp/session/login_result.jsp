<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//HTML form���� ���޵� ������ �ѱ� ���ڵ�
	request.setCharacterEncoding("UTF-8");
	String username = request.getParameter("username");
	String userpw = request.getParameter("userpw");
	
	if (username.equals("admin") && userpw.equals("1234")) {
		session.setAttribute("username", username);
		session.setAttribute("userpw", userpw);
		
		response.sendRedirect("login.jsp");
	}
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>
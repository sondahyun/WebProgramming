<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch06 : login.jsp</title>
</head>
<body>
<%
	String username = (String)session.getAttribute("username");
	if (username != null){
%>
<h2> <%=username %>님 로그인</h2>
<% 
	} else {
%>
<div align="center">
	<H2>로그인</H2>
	<form name="form1" method="POST" action="login_result.jsp">
		아이디: <input type="text" name="username"/> <BR>
		비밀번호: <input type="password" name="userpw"/> <BR>
		<input type="submit" value="로그인"/>
	</form>
</div>

<% 
}
%>
</body>
</html>
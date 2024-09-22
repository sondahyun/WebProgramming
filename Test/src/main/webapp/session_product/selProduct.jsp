<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<%
	//HTML form에서 전달된 데이터 한글 인코딩
	request.setCharacterEncoding("UTF-8");
	if (session.getAttribute("username") == null) {
		String username = request.getParameter("username");
		String userpw = request.getParameter("userpw");
	
		//세션은 같은 브라우저에서 로그인을 하더라도 세션 자체는 동일하게 유지됩니다. 
		// 그러나 로그인 여부에 따라 세션 내에 저장되는 값은 달라질 수 있습니다. 
		// 예를 들어, 사용자가 로그인할 때 아이디나 권한 같은 정보를 세션에 저장하게 되는데, 이 저장된 정보는 사용자가 로그인한 상태에 따라 다를 수 있습니다.

		// 즉, 같은 브라우저에서 서로 다른 계정으로 로그인할 경우, 동일한 세션 ID를 가진 세션에 서로 다른 사용자 정보가 저장되는 방식입니다. 
		// 각 계정에 따른 새로운 세션이 생성되는 것이 아니라, 기존 세션에 다른 데이터를 저장하게 되는 것입니다.
		if(username.equals("admin") && userpw.equals("1234")) 
		{
			session.setAttribute("username",request.getParameter("username"));
			session.setAttribute("userpw", userpw);
		}
		else {
			response.sendRedirect("login.jsp");
		}
	}
	else {
%>
		<script type='text/javascript'> 
			alert("이미 로그인 중임");
		</script>
		<h2>이미 로그인 중</h2>
<%
	}
	
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD>
<title>ch06 : selProduct.jsp</title>
</head>

<body>
<div align="center">
	<H2>상품선택</H2>
	<HR>
	<%=session.getAttribute("username") %>님 환영합니다!!!!
	<HR>
	<form name="form1" method="POST" action="add.jsp">
		<SELECT name="product">
			<option>사과</option>
			<option>귤</option>
			<option>파인애플</option>
			<option>자몽</option>
			<option>레몬</option>
		</SELECT>
		<input type="submit" value="추가"/>
	</form>
	<a href="checkOut.jsp">계산</a>
</div>
</body>
</html>





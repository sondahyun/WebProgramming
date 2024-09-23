<%@ page contentType="text/html;charset=UTF-8" %>
<!--자바빈즈 선언 코드 완성-->
<!-- 스크팁트릿 쓰려면 import, 생성자 이용 -->
<jsp:useBean id="login" class="javabeans_login.LoginBean" scope="page"/>
<!-- setProperty이용하여 form의 내용을 자바빈즈 클래스의 멤버변수로 생성 -->
<jsp:setProperty name="login" property="*" />

<HTML>
<HEAD><TITLE>ch07 : login.jsp </TITLE></HEAD>
<BODY>
<div align=center>
<H2>로그인 예제</H2>
<HR>
<% // 화면 출력만 해서 코드 깔끔
	if(!login.checkUser()) { // login = java클래스의 인스턴스
		out.println("로그인 실패 !!");	
	}
	else {
		out.println("로그인 성공 !!");
	}
%>

<HR>
사용자 아이디 : 
<!--getProperty 로 아이디  출력하는 코드 작성-->
<jsp:getProperty name="login" property="userid"/><BR>
<% login.getUserid(); %>
사용자 패스워드 : 
<!--getProperty 로 비밀번호 출력하는 코드 작성 -->
<jsp:getProperty name="login" property="passwd"/><BR>

</div>
</BODY>
</HTML>
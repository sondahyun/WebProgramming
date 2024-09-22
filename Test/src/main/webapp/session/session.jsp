<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<HTML>
<HEAD><TITLE>ch06 :session.jsp</TITLE></HEAD>
<BODY>
<div align="center">
<H2>session 예제 </H2>
<HR>
<%
	boolean new_session = session.isNew();

	// isNew()  메서드를 이용해 최초세션설정을 확인하고 있다.
	if(new_session) {
		out.println("<script> alert('세션이 해제되어 다시설정합니다.') </script>");
		session.setAttribute("login","홍길동"); 
	}
%>
<!-- session은 브라우저 단위로 초기화 -->
<!-- request 내장객체는 page 단위로 초기화 -->
<!-- application 내장객체는 tomcat(서블릿 컨테이너)단위로 초기화 -->
# <%= session.getAttribute("login") %> 님 환영 합니다.!!!!<BR>
1. 세션 ID : <%= session.getId() %> <BR>
2. 세션 유지시간 : <%= session.getMaxInactiveInterval() %> <BR>
3. 세션이 생성된 시간 : <%= session.getCreationTime() %> <BR>
4. 세션에 마지막으로 엑세스한 시간에서 세션이 생성된 시간을 빼면 웹 사이트의 머문 시간이 계산 된다
: <%= (session.getLastAccessedTime()-session.getCreationTime())/60000 %>

</div>
</BODY>
</HTML>
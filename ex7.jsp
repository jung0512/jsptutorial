<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- String으로 변수 선언 -->
<%!
String id = "admin";
String ps = "adminpw";
String id1 = "admin";
String ps1 = "adminpw1";
String ghkr;
%>
<!-- id와 비밀번호가 맞는지 확인 -->
<%
//맞을 경우
if((id == id1) && (ps == ps1)){
	ghkr = "맞습니다";
}
//틀릴 경우
else{
	ghkr = "틀렸습니다";
}

%>
<!-- 표현식 -->
사용자 아이디 = <%=id %>
사용자 비밀번호 = <%=ps %><Br>
로그인 아이디 = <%=id1 %>
로그인 비밀번호 = <%=ps1 %><Br>
확인 여부 = <%=ghkr %>

</body>
</html>
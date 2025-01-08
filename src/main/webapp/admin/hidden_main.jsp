<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>김현석 로그인 성공 페이지</title>
</head>
<body>

	<jsp:include page="../include/hidden_header.jsp" />
	
	<h1>김현석이 만든 김현석만의 페이지.</h1>
	<p>환영합니다, <%=session.getAttribute("adminName") %>님!</p>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인 페이지</title>
</head>
<body>

	<jsp:include page="../include/admin_header.jsp" />
	
	<h1>관리자 메인 페이지</h1>
	<p>환영합니다, <%= session.getAttribute("adminName") %>님! </p>


	<!-- 로그아웃 버튼. -->
	<a href="admin_logout.go">로그아웃</a>
		
	
	<jsp:include page="../include/admin_footer.jsp" />




</body>
</html>
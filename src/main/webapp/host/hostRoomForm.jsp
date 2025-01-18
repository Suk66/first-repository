<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="<%= request.getContextPath() %>/uploadImage.go" method="post" enctype="multipart/form-data">
    <label for="roomImage">숙박 이미지 업로드:</label>
    <input type="file" name="roomImage" required>
    <button type="submit">이미지 업로드</button>
</form>

<!-- 업로드된 이미지 미리보기 -->
<c:if test="${not empty imagePath}">
    <p>업로드된 이미지:</p>
    <img src="<%= request.getContextPath() %>/${imagePath}" alt="업로드된 이미지" style="width: 300px; height: auto;">
</c:if>

<!-- 업로드 실패 시 오류 메시지 표시 -->
<c:if test="${not empty uploadError}">
    <p style="color: red;">${uploadError}</p>
</c:if>




</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저 프로필 뷰 페이지</title>
<style>
		.profile-container {
            max-width: 400px;
            margin: 20px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .profile-image {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
        }
        .profile-info {
            margin-top: 15px;
            text-align: left;
        }
        .profile-info span {
            font-weight: bold;
        }



</style>




</head>
<body>

<div class="profile-container">
	<h2>User Profile</h2>
	<c:if test="${not empty user.profileImage }">
		<img alt="Profile Image" src="${user.profileImage }" class="profile-image">
	</c:if>
	
	<div class="profile-info">
		<p><span>고객 아이디:</span> ${user.userId }</p>
		<p><span>고객 이메일:</span> ${user.userEmail }</p>
		<p><span>고객 연락처:</span> ${user.joinDate }</p>
		<p><span>아이디 생성일자:</span> ${user.joinDate }</p>
		<p><span>마지막 접속일:</span>${user.lastLogin }</p>
		<p><span>고객 주소:</span> ${user.userAddr }</p>
		<p><span>고객 상태:</span> ${user.status }</p>
	</div>
</div>

</body>
</html>
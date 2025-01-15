<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 리스트</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
<style>
    body {
        background-color: #f7f7f7;
    }
    .container {
        margin-top: 50px;
    }
    .table {
        background-color: white;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
</style>



</head>
<body>

<div class="container" align="center">

	<h2 class="text-center">회원 리스트</h2>
	<form action="<%=request.getContextPath() %>/userList.go" method="post">
	<table class="table table-striped">
	
		<thead>
			<tr>
				<th>번호</th>
				<th>아이디</th>
				<th>이름</th>
				<th>이메일</th>
				<th>연락처</th>
				<th>주소</th>
				<th>가입일</th>
				<th>마지막 로그인</th>
				<th>액션</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="user" items="${userList }">
			
				<tr>
					<td><c:out value="${user.userNum }" /></td>
					<td><c:out value="${user.userId }" /></td>
					<td><c:out value="${user.userName }" /></td>
					<td><c:out value="${user.userEmail }" /></td>
					<td><c:out value="${user.userPhone }" /></td>
					<td><c:out value="${user.userAddr }" /></td>
					<td><c:out value="${user.joinDate }" /></td>
					<td><c:out value="${user.lastLogin }" /></td>
					<td>
						<div class="btn-group">
							<!-- 수정 버튼 -->
							<a href="<%= request.getContextPath() %>/userEdit.go?userId=${user.userId}" class="btn btn-success">수정</a>
							
							<!--  삭제 버튼 -->
							<button type="button" class="btn btn-danger" onclick="confirmDelete('${user.userId}')">삭제</button>
						</div>
					
					</td>
				
				</tr>
			</c:forEach>
		</tbody>

	</table>
	</form>
	
	
	
</div>

<script>
	function confirmDelete(userId) {
		
		if (confirm("정말로 삭제하시겠습니까?")) {
			
			window.location.href = "<%= request.getContextPath() %>/userDelete.go?userId=" +userId;
			
		}
		
	}


</script>



</body>
</html>
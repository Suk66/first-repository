<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Bundle JS (includes Popper.js) -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery (requires Bootstrap's JavaScript components) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>

	body {
        background-color: #f7f7f7;
    }
    .con-1 {
        margin-top: 50px;
    }
    .detail-box {
        padding: 20px;
        border-radius: 15px;
        background-color: white;
        box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }
    .detail-box h2 {
        text-align: center;
        margin-bottom: 30px;
    }
    .btn-primary {
        margin-top: 20px;
    }



</style>



</head>
<body>

<div class="con-1" align="center">

	<div class="con-row">
	
		<div class="col-md-8">
			<div class="detail-box">
				<h2>회원가입 성공!</h2>
				<p>아래에서 회원 정보를 수정하거나 삭제할 수 있습니다.</p>
				<form action="<%= request.getContextPath() %>/userModify.go" method="post">
				<table class="table table-striped">
					<tr>
						<th>아이디</th>
						<td><c:out value="${userDetail.userId }" /></td>
					</tr>
					
					<tr>
						<th>비밀번호</th>
						<td><c:out value="${userDetail.userPwd }" /></td>
					</tr>
					
					<tr>
						<th>이름</th>
						<td><c:out value="${userDetail.userName }" /></td>
					</tr>
					
					<tr>
						<th>이메일</th>
						<td><c:out value="${userDetail.userEmail }" /></td>
					</tr>
					
					<tr>
						<th>연락처</th>
						<td><c:out value="${userDetail.userPhone }" /></td>
					</tr>
					
					<tr>
						<th>주소</th>
						<td><c:out value="${userDetail.userAddr }" /></td>
					</tr>
		
				</table>
				<div class="btn-group">
					<button type="submit" class="btn btn-success">수정</button>
					<a href="<%= request.getContextPath() %>/userList.go" class="btn btn-primary">전체 리스트 조회</a>
					<button type="button" class="btn btn-danger" onclick="confirmDelete('${userDetail.userId}')">삭제</button>
				
				
				</div>
			</form>
			</div>
		</div>
	</div>
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
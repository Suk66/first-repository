<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>김현석만의 히든 페이지</title>
<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Bundle JS (includes Popper.js) -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery (requires Bootstrap's JavaScript components) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
@import
	url('https://fonts.googleapis.com/css2?family=Jersey+15&display=swap');

* {
	font-family: "Jersey 15", serif;
}

.mytitle{

	margin: 0px auto 0px auto;
	
	
	height: 400px;
	
	background-color: green;
	
	background-image: url('https://i.ytimg.com/vi/goCrfSF85MI/maxresdefault.jpg');
	background-position: center;
	background-size: cover;
	
	color: tomato;
	

}

.btn1 {

	color: yellow;
	background-color: blue;
}

.btn2 {

	color:red;
	background-color: yellow;

}





</style>

<script>




</script>




</head>
<body>

<jsp:include page="../include/hidden_header.jsp" />


<div class="mytitle" align="center">
<div>
<br> <br>
</div>
	
<h1>김현석 전용 AirBnb</h1>

<form action="admin_hidden_login.go" method="post">
<tr>
	<th>김현석 아이디</th>
	<td> 
		<input type="text" id="admin_id" name="admin_id">
	</td>
</tr>

<br>

<tr>
	<th>김현석 비밀번호</th>
	<td> 
		<input type="password" id="admin_pwd" name="admin_pwd">
	</td>
</tr>
<br>

<tr>
	<td colspan="2" align="center">
	
	<input class="btn1" type="submit" value="로그인">
	<input class="btn2" type="reset" value="다시작성">
	
	
	
	</td>


</tr>






</form>





</div>





</body>
</html>
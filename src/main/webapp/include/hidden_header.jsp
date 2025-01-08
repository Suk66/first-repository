<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>김현석 헤더</title>


<style>

	.first-t {
	
	background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR5PTxqPaj_e0rgngMzqAofSnktoFjY8WtRWQ&s');
	height: 500px;
	background-size: cover;
	background-position: center;
	
	}

	

	#air_one{
		background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT7NNYIL0CORjnEisGJQA6uPMxoPqwvqsTI5Q&s');
		
		background-color: green;
		
		
		display: flex;
		flex-direction: row;
		align-items: right;
		justify-content: right;
	
	}




</style>






</head>
<body>

	<div class="first-t" align="center">
		
	<div id="air_one">
			<a href="#">${adminName }님 환영합니다.</a>&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="<%=request.getContextPath() %>/admin_login.go">에렌. 이제 집에 가자!</a>
		</div>
	
	</div>


</body>
</html>
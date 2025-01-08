<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

	#air_title {
	
		float: right;
		margin-right: 150px;
		word-spacing: 10px;
		clear: both;
	
	}

	a {
	
		text-decoration: none;
	
	}
	
	ul li {
	
		list-style: none;
		display: inline-block;
		margin-left: 80px;
	}
	
	td {
		text-align: center;
	
	}

</style>


<body>

	<div align="center">
		<hr width="85%" color="tomato">
		<h2>관리자 페이지</h2>
		
		<div id="air_title">
			<a href="#">${adminName }님 환영합니다.</a>
			<a href="<%=request.getContextPath() %>/admin_hidden.go">로그졕스</a>
		</div>
		<br>
		
		<hr width="85%" color="tomato">
		
		<br>
		
		<table width="800">
			<tr>
				<td>
					<a href="<%=request.getContextPath() %>/admin_main.go">관리자 홈</a>
				</td>
			
			
			</tr>
		
		</table>
		
		<hr width="85%" color="red">
		
		<br>
		
	
	
	
	</div>





</body>
</html>
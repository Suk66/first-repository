<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AirBnb 고객 로그인 페이지</title>
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

.mytitle {
	background-image:
		url('<%=request.getContextPath() %>/images/background.jpg');
	background-position: center;
	background-size: cover;
	height: 400px;
	color: white;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
}


.mycards {
	
	width: 1200px;
	margin: 30px auto 0px auto;
}

.mypostingbox{

	margin: 30px auto 0px auto;

	width: 500px;
	height: 380px;
	padding: 20px;
	box-shadow: 0px 0px 8px 0px blue;
	
	border-radius: 12px;
	display: none;
	
}

.mybtn {
	
	background-color: red;
	
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;

}

.mybtn > button {

	margin-right: 5px;

}






</style>
<script>
	function openclose(){
		
		$('#postingbox').toggle();
		
		
		
	}
	
	function showPostingBox() {
		
		document.getElementById("loginBtn").style.display = "none";
		document.getElementById("rewriteBtn").style.display = "none";
		document.getElementById("mypostingbox").style.display = "block";
		
		
	}




</script>





</head>
<body>

	<div class="mytitle" align="center">

		<h1>나만의 Air Bnb</h1>

		<form action="user_login_ok.go" method="post">
		<table border="1" width="400">
			<tr>
				<th>고객 아이디</th>
				<td><input type="text" id="user_id" name="user_id" required></td>
			</tr>

			<tr>
				<th>고객 비밀번호</th>
				<td><input type="password" id="user_pwd" name="user_pwd" required></td>
			</tr>
			
		
			<tr>
				<td colspan="2" align="center">
					<button type="submit" class="btn btn-warning" id="loginBtn">로그인</button>&nbsp;&nbsp;
					<button type="reset" class="btn btn-info" id="rewriteBtn">다시작성</button>
				</td>
			</tr>




		</table>
	</form>
	</div>
	
	<div align="center">
		<%= new java.util.Date() %>
		
		<br>
		
		<%
		
			java.util.Calendar cal = java.util.Calendar.getInstance();
		%>
		
		오늘은 
		<%= cal.get(java.util.Calendar.YEAR) %>년
		<%= cal.get(java.util.Calendar.MONTH) +1 %>월
		<%= cal.get(java.util.Calendar.DATE) %>일
		입니다.
		<br>
		<% 
			int sum = 0;
			for (int i=1; i <= 10; i++) {
				
				sum = sum + i;
				
			}
		
		%>
		1 부터 10까지의 합은 <%= sum %> 입니다.
		<br>
		
		1 부터 10까지의 합
		
		<%= 1+2+3+4+5+6+7+8+9+10 %>
		입니다.
		<br>
		
		<%!
		
			public int multiply(int a, int b) {
			
			int c = a*b;
			
			return c;
			
		}
		
		%>
		
		10 * 25 = <%= multiply(10, 25) %>
		<br>
		
		<%!
			public int add(int a, int b) {
			
			int c = a+b;
			return c;
			
		}
		
		public int subtract(int a, int b) {
			
			int c = a - b;
			return c;
			
		}
		
		
		%>
		
		<%
		
			int value1 = 3;
			int value2 = 9;
			
			int addResult = add(value1, value2);
			int subtractResult = subtract(value1, value2);
		
		
		%>
		
		<%=value1 %> + <%= value2 %> = <%= addResult %>
		<br>
		<%= value1 %> - <%= value2 %> = <%= subtractResult %>
		<br>
		
		클라이언트IP = <%=request.getRemoteAddr() %> <br>
		
		요청정보길이 = <%=request.getContentLength() %> <br>
		
		요청정보 인코딩 = <%=request.getCharacterEncoding() %> <br>
		
		요청정보 컨텐츠타입 = <%=request.getContentType() %> <br>
		
		요청정보 프로토콜 = <%= request.getProtocol() %> <br>
		
		요청정보 전송방식 = <%= request.getMethod() %> <br>
		
		요청 URI = <%= request.getRequestURI() %> <br>
		
		컨텍스트 경로 = <%=request.getContextPath() %> <br>
		
		서버이름 = <%= request.getServerName() %> <br>
		
		서버포트 = <%= request.getServerPort() %> <br>
		
		
	
	</div>
	
	
	<div class="mypostingbox" id="postingbox">
	
		<div class="form-floating mb-3">
	  <input type="email" class="form-control" id="floatingInput" placeholder="Air 숙박 이미지">
	  <label for="floatingInput">Air 숙박 이미지 !</label>
	</div>
	
	<div class="form-floating mb-3">
	  <input type="email" class="form-control" id="floatingInput" placeholder="Air 숙박 제목">
	  <label for="floatingInput">Air 숙박 제목 !</label>
	</div>
	
	<div class="form-floating mb-3">
	  <input type="email" class="form-control" id="floatingInput" placeholder="Air 숙박 내용">
	  <label for="floatingInput">Air 숙박 내용 !</label>
	</div>
	
	<div class="form-floating mb-3">
	  <input type="email" class="form-control" id="floatingInput" placeholder="Air 숙박 날짜">
	  <label for="floatingInput">Air 숙박 날짜 !</label>
	</div>
	
	
	<div class="mybtn">
		<button type="button" class="btn btn-danger">기록하기</button>
		<button type="button" class="btn btn-secondary">닫기</button>
	</div>
	
	</div>
	
	
	
	
	
	

	<div class="mycards">

		<div class="row row-cols-1 row-cols-md-4 g-4">
			<div class="col">
				<div class="card h-100">
					<img
						src="https://img.freepik.com/free-photo/nature-landscape-with-vegetation-and-hut-style-house_23-2150444048.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">관리자 숙박 관리.</h5>
						<p class="card-text">관리자 숙박 내용.</p>
					</div>
					<div class="card-footer">
						<small class="text-body-secondary">업데이트 날짜 약식.</small>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card h-100">
					<img
						src="https://png.pngtree.com/thumb_back/fw800/background/20240606/pngtree-mountain-with-lake-and-house-image_15861207.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">관리자 숙박 관리.</h5>
						<p class="card-text">관리자 숙박 내용.</p>
					</div>
					<div class="card-footer">
						<small class="text-body-secondary">업데이트 날짜 약식.</small>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card h-100">
					<img
						src="https://img.freepik.com/free-photo/nature-landscape-with-vegetation-and-hut-style-house_23-2150444057.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">관리자 숙박 관리.</h5>
						<p class="card-text">관리자 숙박 내용.</p>
					</div>
					<div class="card-footer">
						<small class="text-body-secondary">업데이트 날짜 약식.</small>
					</div>
				</div>
			</div>
			<div class="col">
				<div class="card h-100">
					<img
						src="https://cdn.wallpapersafari.com/58/12/BsDkdl.jpg"
						class="card-img-top" alt="...">
					<div class="card-body">
						<h5 class="card-title">관리자 숙박 관리.</h5>
						<p class="card-text">관리자 숙박 내용.</p>
					</div>
					<div class="card-footer">
						<small class="text-body-secondary">업데이트 날짜 약식.</small>
					</div>
				</div>
			</div>


		</div>



	</div>




</body>
</html>
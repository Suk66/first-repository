<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AirBnb 관리자 로그인 페이지</title>
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
		url('https://files.oaiusercontent.com/file-XPJYY33NTu3taXzfbuQsfA?se=2025-01-07T01%3A36%3A59Z&sp=r&sv=2024-08-04&sr=b&rscc=max-age%3D604800%2C%20immutable%2C%20private&rscd=attachment%3B%20filename%3De679e1c1-3fac-41e3-8170-e7ef137e2e9b.webp&sig=qJhjCrjburQR%2B9shD249JYfweqgU9AQbRX%2BNlelUPxM%3D');
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


		<table border="1" width="400">
			<tr>
				<th>관리자 아이디</th>
				<td><input name="admin_id"></td>
			</tr>

			<tr>
				<th>관리자 비밀번호</th>
				<td><input type="password" name="admin_pwd"></td>
			</tr>

			<tr>
				<td colspan="2" align="center">
					<button onclick="openclose()" type="button" class="btn btn-warning" onclick="checkLogin()" id="loginBtn">로그인</button>&nbsp;&nbsp;
					<button type="button" class="btn btn-info" id="rewriteBtn">다시작성</button>
				</td>
			</tr>




		</table>

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
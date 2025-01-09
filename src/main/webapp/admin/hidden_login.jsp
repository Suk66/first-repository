<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Air Bnb</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Bootstrap Bundle JS (includes Popper.js) -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery (requires Bootstrap's JavaScript components) -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>

<style>
        body {
            background-color: #f7f7f7;
        }
        .login-container {
            margin-top: 100px;
        }
        .login-box {
            padding: 40px;
            border-radius: 10px;
            background-color: white;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
        }
        .login-box h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .btn-primary {
            width: 100%;
        }
        .form-control {
            border-radius: 5px;
        }
        .forgot-password {
            text-align: right;
            font-size: 14px;
        }
    </style>





</style>


</head>




<body>

<div class="container login-container">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="login-box">
                    <h2>관리자 로그인</h2>
                    <form action="<%=request.getContextPath()%>/hidden_login_ok.go" method="post">
                        <div class="mb-3">
                            <label for="admin_id" class="form-label">아이디</label>
                            <input type="text" class="form-control" id="admin_id" name="admin_id" placeholder="아이디를 입력하세요" required>
                        </div>
                        <div class="mb-3">
                            <label for="admin_pwd" class="form-label">비밀번호</label>
                            <input type="password" class="form-control" id="admin_pwd" name="admin_pwd" placeholder="비밀번호를 입력하세요" required>
                        </div>
                        <button type="submit" class="btn btn-primary">로그인</button>
                    </form>
                    <div class="forgot-password">
                        <a href="#">비밀번호를 잊으셨나요?</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

	




</div>





</body>
</html>
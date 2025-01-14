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
        body {
            background-color: #f7f7f7;
        }
        .login-container {
            margin-top: 100px;
        }
        .login-box {
            padding: 20px;
            border-radius: 15px;
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
        
        .btn-group {
        
        	
        	
        	height: 60px;
        	width: 190px;
        	margin: auto 0 auto 5px;
        	
        	display: flex;
			flex-direction: row;
			align-items: left;
			justify-content: center;
			
			
        	gap: 10px;                 /* 버튼 간 간격 */
        	
			
			
        
        
        }
        
        
        
    </style>








</head>




<body>

<div class="container login-container">
        <div class="row justify-content-center">
            <div class="col-md-6 col-lg-4">
                <div class="login-box">
                    <h2>회원가입 페이지</h2>
                    <form action="<%=request.getContextPath()%>/user_new.go" method="post">
                    
                        <div class="mb-3">
                            
                            <input type="text" class="form-control" id="user_id" name="user_id" placeholder="아이디를 입력하세요" required>
                        </div>
                        
                        <div class="mb-3">
                            
                            <input type="password" class="form-control" id="user_pwd" name="user_pwd" placeholder="비밀번호를 입력하세요" required>
                        </div>
                        
                        <div class="mb-3">
                            
                            <input type="text" class="form-control" id="user_name" name="user_name" placeholder="이름을 입력하세요" required>
                        </div>
                        
                        <div class="mb-3">
                           
                            <input type="email" class="form-control" id="user_email" name="user_email" placeholder="이메일 주소를 입력하세요" required>
                        </div>
                        
                        <div class="mb-3">
                            
                            <input type="tel" class="form-control" id="user_phone" name="user_phone" placeholder="전화번호를 입력하세요" required>
                        </div>
                        
                        <div class="btn-group">
                        	<button type="submit" class="btn btn-primary onclick="handleSubmit()">작성완료</button>
                        	<button type="reset" class="btn btn-warning onclick="handleReset()">다시작성</button>
                        </div>
                    </form>
                    <div class="forgot-password">
                        <a href="#">도움말!</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

	










</body>
</html>
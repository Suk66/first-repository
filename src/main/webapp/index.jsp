<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>AirBnb 초기 페이지</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f7f7f7;
            margin: 0;
        }

        .container {
            text-align: center;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .container h1 {
            font-size: 32px;
            margin-bottom: 30px;
        }

        .button-group {
            display: flex;
            justify-content: space-around;
        }

        .button-group a {
            text-decoration: none;
            padding: 15px 30px;
            background-color: #FF5A5F;
            color: white;
            font-size: 18px;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .button-group a:hover {
            background-color: #FF3B30;
        }

        .button-group a.admin {
            background-color: #4BB543;
        }

        .button-group a.admin:hover {
            background-color: #3E8E41;
        }
    </style>
</head>
<body>

    <div class="container">
        <h1>Airbnb에 오신 것을 환영합니다</h1>
        <div class="button-group">
            <!-- 고객과 관리자 페이지로 이동하는 버튼 -->
            <a href="hostRoom.go">고객</a>
            <a href="admin_login.go" class="admin">관리자</a>
        </div>
    </div>

</body>
</html>

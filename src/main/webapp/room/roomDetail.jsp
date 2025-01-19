<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>숙소 상세 정보</title>
<!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        .room-container {
            max-width: 900px;
            margin: 50px auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .room-image {
            width: 100%;
            height: 400px;
            object-fit: cover;
            border-radius: 8px;
        }

        .room-title {
            font-size: 28px;
            font-weight: bold;
            margin-top: 20px;
        }

        .room-description {
            font-size: 18px;
            color: #555;
            margin-top: 10px;
        }

        .room-details {
            margin-top: 20px;
            padding: 15px;
            background: #f9f9f9;
            border-radius: 8px;
        }

        .room-price {
            font-size: 24px;
            font-weight: bold;
            color: #d9534f;
        }

        .room-location {
            font-size: 18px;
            color: #777;
        }

        .room-link {
            display: inline-block;
            background: #ff5a5f;
            color: white;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 18px;
            margin-top: 20px;
        }

        .room-link:hover {
            background: #e14e4d;
        }
    </style>




</head>
<body>

<%
    // RoomDetailAction에서 request로 전달된 값 가져오기
    String title = (String) request.getAttribute("title");
    String description = (String) request.getAttribute("description");
    String image = (String) request.getAttribute("image");
    String location = (String) request.getAttribute("location");
    int price = request.getAttribute("price") != null ? (Integer) request.getAttribute("price") : 0;
    String link = (String) request.getAttribute("link");
%>

<div class="room-container">
    <img src="<%= request.getContextPath() %>/<%= image %>" alt="숙소 이미지" class="room-image">
    
    <h2 class="room-title"><%= title != null ? title : "제목 없음" %></h2>
    <p class="room-description"><%= description != null ? description : "설명이 없습니다." %></p>

    <div class="room-details">
        <p class="room-location">📍 위치: <%= location != null ? location : "위치 정보 없음" %></p>
        <p class="room-price">💰 가격: <%= price > 0 ? price + "원 / 박" : "가격 정보 없음" %></p>
    </div>

    <% if (link != null && !link.isEmpty()) { %>
        <a href="<%= link %>" class="room-link" target="_blank">예약하러 가기</a>
    <% } else { %>
        <p style="color: gray;">예약 링크가 제공되지 않았습니다.</p>
    <% } %>
</div>


</body>
</html>
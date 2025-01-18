<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List, com.airbnb.model.AirbnbRoomDAO, com.airbnb.model.AirbnbRoomDTO" %>

<%
    AirbnbRoomDAO dao = AirbnbRoomDAO.getInstance();
    List<AirbnbRoomDTO> roomList = dao.getAllRooms();
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>숙박 리스트</title>
</head>
<body>
    <h2>숙박 리스트</h2>
    <div class="room-container">
        <% for (AirbnbRoomDTO room : roomList) { %>
            <div class="room-card">
                <img src="<%= request.getContextPath() + "/" + room.getImagePath() %>" alt="숙박 이미지">
                <h3><%= room.getTitle() %></h3>
                <p>위치: <%= room.getLocation() %></p>
                <p>설명: <%= room.getDescription() %></p>
                <p>가격: <%= room.getPrice() %>원/박</p>
                <a href="<%= room.getLink() %>">예약하기</a>
            </div>
        <% } %>
    </div>
</body>
</html>

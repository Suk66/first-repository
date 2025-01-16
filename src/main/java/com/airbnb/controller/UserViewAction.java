package com.airbnb.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.Timestamp;

import com.airbnb.model.AirbnbUserDTO;

public class UserViewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 샘플 데이터 생성
		
		AirbnbUserDTO user = new AirbnbUserDTO(1, "hyunsuk123", "password123", "윤정현", "poksa12@example.com", "010-1234-5678", new Timestamp(System.currentTimeMillis()),
                new Timestamp(System.currentTimeMillis()),
                "Seoul, South Korea");
		
		
		request.setAttribute("User", user);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("/users/userView.jsp");
		
		
		return forward;
	}

}

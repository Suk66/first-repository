package com.upload.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;

public class RoomDetailAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 숙소 상세정보 로직처리
		String title = request.getParameter("title");
		String description = request.getParameter("desc");
		String image = request.getParameter("image");
		
		// 받아온 값을 request에 저장하여 JSP로 전달
		request.setAttribute("title", title);
		request.setAttribute("description", description);
		request.setAttribute("image", image);
		
		ActionForward forward = new ActionForward();
		forward.setRedirect(false);
		forward.setPath("roomDetail.jsp");
		
		return forward;
	}

}

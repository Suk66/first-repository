package com.upload.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;
import com.airbnb.model.AirbnbRoomDAO;
import com.airbnb.model.AirbnbRoomDTO;

public class RoomSaveAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String title = request.getParameter("title");
        String description = request.getParameter("desc");
        String image = request.getParameter("image");
        String location = request.getParameter("location");
        int price = Integer.parseInt(request.getParameter("price"));
        String link = request.getParameter("link");

        // 세션에서 호스트 ID 가져오기
        String adminId = (String) request.getSession().getAttribute("admin_id");

        AirbnbRoomDTO room = new AirbnbRoomDTO();
        room.setAdminId(adminId);
        room.setTitle(title);
        room.setDescription(description);
        room.setImagePath(image);
        room.setLocation(location);
        room.setPrice(price);
        room.setLink(link);

        AirbnbRoomDAO dao = AirbnbRoomDAO.getInstance();
        dao.insertRoom(room);

        ActionForward forward = new ActionForward();
        forward.setRedirect(false);
        forward.setPath("admin/admin_host.jsp"); // 다시 목록으로 이동
		
		
		
		return forward;
	}

}

package com.user.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;
import com.airbnb.model.AirbnbUserDAO;

public class UserDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String userId = request.getParameter("userId").trim();
		
		AirbnbUserDAO dao = AirbnbUserDAO.getInstance();
		
		int deletedUserNum = dao.getUserNumById(userId);
		
		int result = dao.deleteUser(userId);
		
		ActionForward forward = new ActionForward();
		
		if(result > 0) {
			dao.reUserNum(deletedUserNum);
			request.setAttribute("message", "회원이 성공적으로 삭제 되었습니다.");
			
		}else {
			request.setAttribute("message", "회원 삭제에 실패했습니다.");
			
		}
		forward.setRedirect(false);
		forward.setPath("/users/userList.jsp");
		
		
		return forward;
	}

}

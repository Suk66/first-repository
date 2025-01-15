package com.user.action;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;
import com.airbnb.model.AirbnbUserDAO;
import com.airbnb.model.AirbnbUserDTO;

public class UserListAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		AirbnbUserDAO dao = AirbnbUserDAO.getInstance();
		List<AirbnbUserDTO> userList = dao.getAllUsers();
		
		request.setAttribute("userList", userList);
		
		ActionForward forward = new ActionForward();
		
		forward.setRedirect(false);
		forward.setPath("/users/userList.jsp");
		
		return forward;
	}

}

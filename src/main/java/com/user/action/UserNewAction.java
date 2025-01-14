package com.user.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;
import com.airbnb.model.AirbnbUserDAO;
import com.airbnb.model.AirbnbUserDTO;

public class UserNewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String admin_id = request.getParameter("admin_id").trim();
		
		String admin_pwd = request.getParameter("admin_pwd").trim();
		
		String admin_name = request.getParameter("admin_name").trim();
		
		String admin_email = request.getParameter("admin_email").trim();
		
		String admin_phone = request.getParameter("admin_phone").trim();
		
		
		AirbnbUserDAO dao = AirbnbUserDAO.getInstance();
		
		
		AirbnbUserDTO dto = new AirbnbUserDTO();
		
		dto.setUserId(admin_id);
		dto.setUserPwd(admin_pwd);
		dto.setU
		
		
		
		
		
		
		
		return null;
	}

}

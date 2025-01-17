package com.user.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;
import com.airbnb.model.AirbnbUserDAO;
import com.airbnb.model.AirbnbUserDTO;

public class UserNewAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String user_id = request.getParameter("user_id");
		
		String user_pwd = request.getParameter("user_pwd");
		
		String user_name = request.getParameter("user_name");
		
		String user_email = request.getParameter("user_email");
		
		String user_phone = request.getParameter("user_phone");
		
		String user_addr = request.getParameter("user_addr");
		
		
		AirbnbUserDAO dao = AirbnbUserDAO.getInstance();
		
		
		AirbnbUserDTO dto = new AirbnbUserDTO();
		
		dto.setUserId(user_id);
		dto.setUserPwd(user_pwd);
		dto.setUserName(user_name);
		dto.setUserEmail(user_email);
		dto.setUserPhone(user_phone);
		dto.setUserAddr(user_addr);
		
		int chk = dao.UserNew(dto);
		
		ActionForward forward = new ActionForward();
		
		
		if(chk > 0) {
			// 성공시
			// request.setAttribute("alertMessage", "회원가입을 축하드립니다. " +user_id+ " 님 앞으로를 기원합니다.");
			request.setAttribute("success", true);
			request.setAttribute("message", "회원가입이 성공적으로 완료되었습니다.");
			
			request.setAttribute("userDetail", dto);
			forward.setRedirect(false);
			forward.setPath("/users/userNew_Ok.jsp");
			
			
		} else {
			// 실패
			request.setAttribute("success", false);
			request.setAttribute("message", "회원가입에 실패했습니다.");
			
			forward.setRedirect(false);
			forward.setPath("/admin/hidden_test.jsp");
		}
		return forward;
	}

}

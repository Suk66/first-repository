package com.user.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;
import com.airbnb.model.AirbnbUserDAO;

public class UserModifyAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		String userId = request.getParameter("userId").trim();
		
		String userPwd = request.getParameter("userPwd").trim();
		
		String userName = request.getParameter("userName").trim();
		
		String userEmail = request.getParameter("userEmail").trim();
		
		String userPhone = request.getParameter("userPhone").trim();
		
		String userAddr = request.getParameter("userAddr").trim();
		
		AirbnbUserDAO dao = AirbnbUserDAO.getInstance();
		
		boolean isEmailCheck = dao.checkEmail(userId, userEmail);
		
		if(isEmailCheck) {
			
			request.setAttribute("message", "중복된 이메일");
			ActionForward forward = new ActionForward();
			
			forward.setRedirect(false);
			forward.setPath("/userNew.jsp");
			return forward;
			
		}
		
		int result = dao.updateUser(userId, userPwd, userName, userEmail, userPhone, userAddr);
		
		ActionForward forward = new ActionForward();
		
		if(result > 0) {
			
			request.setAttribute("message", "회원 정보가 성공적으로 수정되었습니다.");
		}else {
			request.setAttribute("message", "회원 정보 수정에 실패했습니다.");
			
		}
		forward.setRedirect(false);
		forward.setPath("userNew_Ok.jsp");
		
		return forward;
	}

}

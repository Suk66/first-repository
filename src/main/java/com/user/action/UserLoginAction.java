package com.user.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;
import com.airbnb.model.AirbnbUserDAO;
import com.airbnb.model.AirbnbUserDTO;

public class UserLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 유저 로그인 페이지에서 입력한 아이디와 비밀번호가 
		// airbnb_user 테이블 상의 아이디와 비밀번호가 일치하는지
		// 여부를 확인하여 view page(관리자 메인 페이지)로 이동시키는 로직.
		
		String user_id = request.getParameter("user_id").trim();
		
		String user_pwd = request.getParameter("user_pwd").trim();
		
		AirbnbUserDAO dao = AirbnbUserDAO.getInstance();
		
		int check = dao.userCheck(user_id, user_pwd);
		
		ActionForward forward = new ActionForward();
		
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		
		if(check >0) {
			
			AirbnbUserDTO cont = dao.getUser(user_id);
			
			session.setAttribute("userId", cont.getUserId());
			session.setAttribute("userPwd", cont.getUserPwd());
			
			forward.setRedirect(false);
			forward.setPath("users/userView.jsp");
			
		}else if(check == -1) {
			
			// 아이디는 일치하나 비번이 틀림.
			out.println("<script>");
			out.println("alert('고객 비밀번호가 틀립니다. 확인 해주세요~')");
			out.println("history.back()");
			out.println("</script>");
			
		}else {
			
			out.println("<script>");
			out.println("alert('존재하지 않는 고객입니다. ~~~ ')");
			out.println("history.back()");
			out.println("</script>");
			
			
		}
		
		
		
		
		return forward;
	}

}

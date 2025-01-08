package com.admin.action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;
import com.airbnb.model.AdminDAO;
import com.airbnb.model.AdminDTO;

public class AdminHiddenLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String admin_id = request.getParameter("admin_id").trim();
		
		String admin_pwd = request.getParameter("admin_pwd").trim();
		
		AdminDAO dao = AdminDAO.getInstance();
		
		int check = dao.adminCheck(admin_id, admin_pwd);
		
		ActionForward forward = new ActionForward();
		
		PrintWriter out = response.getWriter();
		
		HttpSession session = request.getSession();
		
		if (check > 0) {
			
			AdminDTO cont = dao.getAdmin(admin_id);
			
			session.setAttribute("adminId", cont.getAdmin_id());
			session.setAttribute("adminName", cont.getAdmin_name());
			
			forward.setRedirect(false);
			forward.setPath("admin/hidden_main.jsp");
			
			
		}else if (check == -1) {
			
			// 아이디는 일치하나 비번 다름.
						out.println("<script>");
						out.println("alert('관리자 비밀번호가 틀립니다. 확인 해주세요~')");
						out.println("history.back()");
						out.println("</script>");
			
			
		}else {
			
			out.println("<script>");
			out.println("alert('존재하지 않는 관리자입니다. ~~~ ')");
			out.println("history.back()");
			out.println("</script>");
			
			
		}
		
		
		
		
		
		
		return forward;
	}

}

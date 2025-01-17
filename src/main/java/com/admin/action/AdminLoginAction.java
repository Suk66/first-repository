package com.admin.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;
import com.airbnb.model.AdminDAO;
import com.airbnb.model.AdminDTO;

public class AdminLoginAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		String adminId = request.getParameter("admin_id");
		String adminPwd = request.getParameter("admin_pwd");
		
		JSONObject jsonResponse = new JSONObject();
		
		if (adminId == null || adminPwd == null || adminId.trim().isEmpty() || adminPwd.trim().isEmpty()) {
            jsonResponse.put("success", false);
            jsonResponse.put("message", "아이디 또는 비밀번호가 입력되지 않았습니다.");
        } else {
            AdminDAO dao = AdminDAO.getInstance();
            AdminDTO admin = dao.getAdmin(adminId.trim());

            if (admin != null && adminPwd.equals(admin.getAdmin_pwd())) {
                HttpSession session = request.getSession();
                session.setAttribute("admin_id", adminId);
                session.setAttribute("admin_type", admin.getAdmin_type());

                jsonResponse.put("success", true);
                jsonResponse.put("adminType", admin.getAdmin_type());
                jsonResponse.put("message", "로그인 성공");
            } else {
                jsonResponse.put("success", false);
                jsonResponse.put("message", "아이디 또는 비밀번호가 올바르지 않습니다.");
            }
        }
		// JSON 응답 전송
		response.setContentType("application/json; charset=UTF-8");
		response.getWriter().write(jsonResponse.toString());
		
		return null;
	}

}

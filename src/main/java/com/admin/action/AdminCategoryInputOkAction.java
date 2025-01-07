package com.admin.action;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;

public class AdminCategoryInputOkAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 카테고리 등록 폼페이지에서 넘어온 데이터들을 가지고 Air_category 테이블에 저장하는 비지니스 로직.
		
		String category_code = request.getParameter("category_code").trim();
		
		String category_name = request.getParameter("category_name").trim();
		
	
		
		
		return null;
	}

}

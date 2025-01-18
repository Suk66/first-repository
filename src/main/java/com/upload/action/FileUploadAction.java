package com.upload.action;

import java.io.File;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

public class FileUploadAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {
		
		ActionForward forward = new ActionForward();
		String savePath = request.getServletContext().getRealPath("/upload");
		
		System.out.println("파일 저장 경로" +savePath);
		
		int maxFileSize = 5 * 1024 * 1024;
		
		File uploadDir = new File(savePath);
		if (!uploadDir.exists()) {
			uploadDir.mkdir(); 	// 업로드 폴더가 없으면 생성
		}
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, savePath, maxFileSize, "UTF-8", new DefaultFileRenamePolicy());
			
			
			
			
			// 업로드된 파일명 가져오기
			String fileName = multi.getFilesystemName("roomImage");
			
			
			String filePath = "upload/" + fileName;		// DB에 저장될 경로
			System.out.println("업로드된 파일: " + filePath);
			
		
			request.getSession().setAttribute("uploadedImagePath", filePath);
			
			
			// 업로드된 이미지 경로를 JSP로 전송
			request.setAttribute("imagePath", filePath);
			
			// 업로드 후 이동할 페이지
			forward.setRedirect(false);
			forward.setPath("admin/admin_host.jsp");
			
			} catch (Exception e) {
			e.printStackTrace();
			response.getWriter().println("파일 업로드 실패!");
				
		}
		return forward;
	}

}

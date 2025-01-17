package com.product.action;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.json.simple.JSONObject;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;

import java.io.File;

public class UploadImageAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws IOException {

		String uploadPath = "/Users/hsuk/eclipse-workspace(jsp)/Airbnb/src/main/webapp/upload";
		File uploardDir = new File(uploadPath);

		if (!uploardDir.exists()) {
			uploardDir.mkdirs();
		}

		String title = null;
		String description = null;
		String imagePath = null;

		try {
			if (ServletFileUpload.isMultipartContent(request)) {
				ServletFileUpload upload = new ServletFileUpload(new DiskFileItemFactory());
				for (FileItem item : upload.parseRequest(request)) {
					if (!item.isFormField()) { // 파일 필드
						String fileName = new File(item.getName()).getName();
						String filePath = uploadPath + File.separator + fileName;
						File storeFile = new File(filePath);

						item.write(storeFile);

						imagePath = request.getContextPath() + "/upload/" + fileName; // 이미지 경로저장
					} else {
						// 텍스트 필드 처리
						if (item.getFieldName().equals("title")) {
							title = item.getString("UTF-8");
						} else if (item.getFieldName().equals("description")) {
							description = item.getString("UTF-8");
						}
					}
				}

			}
			
			// JSON 응답
			JSONObject jsonResponse = new JSONObject();
			jsonResponse.put("success", true);
			jsonResponse.put("title", title);
			jsonResponse.put("description", description);
			jsonResponse.put("imagePath", imagePath);
			
			response.setContentType("application/json; charset=UTF-8");
			response.getWriter().write(jsonResponse.toJSONString());
		
			request.setAttribute("message", "상품 등록 완료!");

		} catch (Exception e) {
			JSONObject jsonResponse = new JSONObject();
	        jsonResponse.put("success", false);
	        jsonResponse.put("message", "파일 업로드 실패: " + e.getMessage());

	        response.setContentType("application/json; charset=UTF-8");
	        response.getWriter().write(jsonResponse.toJSONString());
			
		}
		
		return null;
	}

}

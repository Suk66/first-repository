package com.upload.action;

import java.io.File;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.airbnb.controller.Action;
import com.airbnb.controller.ActionForward;
import com.airbnb.model.AirbnbRoomDAO;
import com.airbnb.model.AirbnbRoomDTO;
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
			
			
			// 폼에서 입력한 숙소 정보 가져오기
            String title = multi.getParameter("title");
            String location = multi.getParameter("location");
            String description = multi.getParameter("description");
            String priceStr = multi.getParameter("price");
            String link = multi.getParameter("link");
            int price = Integer.parseInt(priceStr);
            
			String uploadedTitle = multi.getParameter("title");
			String uploadedDescription = multi.getParameter("description");
			
			
			HttpSession session = request.getSession();
			String adminId = (String) session.getAttribute("admin_id");
			
			System.out.println("FileUploadAction adminId " + adminId);
			
			if (adminId == null) {
				
				response.getWriter().println("<script>alert('관리자 로그인이 필요합니다.'); history.back();</script>");
				return null;
			}
			
			// 숙소 정보 객체 생성
			AirbnbRoomDTO roomDTO = new AirbnbRoomDTO();
            roomDTO.setAdminId(adminId);
            roomDTO.setTitle(title);
            roomDTO.setLocation(location);
            roomDTO.setDescription(description);
            roomDTO.setPrice(price);
            roomDTO.setImagePath(filePath);
            roomDTO.setLink(link);
            
            
            // DAO를 사용하여 DB에 숙소 정보 삽입
            AirbnbRoomDAO roomDAO = AirbnbRoomDAO.getInstance();
            int result = roomDAO.insertRoom(roomDTO);
            
            if (result >0) {
            	System.out.println("숙소 DB에 성공적으로 저장되습니다.");
            }else {
            	System.out.println("숙소 저장 실패.");
            }
            
			
		
			List<AirbnbRoomDTO> roomList = roomDAO.getAllRooms();
			request.setAttribute("roomList", roomList);
			
			
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

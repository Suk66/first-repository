package com.airbnb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class AirbnbRoomDAO {

	// DB와 연동하는 객체.
	Connection con = null;

	// DB에 SQL문을 전송하는 객체.
	PreparedStatement pstmt = null;

	// SQL문을 실행한 후에 결과 값을 가지고 있는 객체.
	ResultSet rs = null;

	// 쿼리문을 저장할 변수
	String sql = null;

	private static AirbnbRoomDAO instance;

	private AirbnbRoomDAO() {  }

	public static AirbnbRoomDAO getInstance() {

		if (instance == null) {
			instance = new AirbnbRoomDAO();
		}

		return instance;

	} // getInstance() end

	// DB연동
	public void openConn() {

		try {
			Context initCtx = new InitialContext();

			Context ctx = (Context) initCtx.lookup("java:comp/env");

			DataSource ds = (DataSource) ctx.lookup("jdbc/myoracle");

			con = ds.getConnection();

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	} // openConn() end

	// DB에 연결되어 있던 자원 종료.
	public void closeConn(ResultSet rs, PreparedStatement pstmt, Connection con) {

		try {
			if (rs != null)
				rs.close();
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	} // closeConn() end

	public void closeConn(PreparedStatement pstmt, Connection con) {

		try {
			if (pstmt != null)
				pstmt.close();
			if (con != null)
				con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	} // closeConn() end
	
	public int insertRoom(AirbnbRoomDTO room) {
		
			int result = 0;
		
		try {
			openConn();
			
			sql = "insert into airbnb_room (admin_id, title, location, description, price, image_path, link)" +
					"values (?, ?, ?, ?, ?, ?, ?)";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, room.getAdminId());
	        pstmt.setString(2, room.getTitle());
	        pstmt.setString(3, room.getLocation());
	        pstmt.setString(4, room.getDescription());
	        pstmt.setInt(5, room.getPrice());
	        pstmt.setString(6, room.getImagePath());
	        pstmt.setString(7, room.getLink());
	        
	        result = pstmt.executeUpdate();
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
			closeConn(pstmt, con);
		}
        return result;
		
	}	// insertRoom() end
	
	public List<AirbnbRoomDTO> getAllRooms() {
		
		List<AirbnbRoomDTO> roomList = new ArrayList<AirbnbRoomDTO>();
		
		
		
		try {
			openConn();
			
			sql = "select id, admin_id, title, location, description, price, image_path, link, created_at from airbnb_room order by created_at desc";
			
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				AirbnbRoomDTO room = new AirbnbRoomDTO();
				
				room.setId(rs.getInt("id"));
				room.setAdminId(rs.getString("admin_id"));
				room.setTitle(rs.getString("title"));
				room.setLocation(rs.getString("location"));
				room.setDescription(rs.getString("description"));
				room.setPrice(rs.getInt("price"));
				room.setImagePath(rs.getString("image_path"));
				room.setLink(rs.getString("link"));
				roomList.add(room);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			closeConn(rs, pstmt, con);
		}
		return roomList;
		
		
	}	// getAllRooms() end
	
	

}

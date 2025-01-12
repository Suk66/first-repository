package com.airbnb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class AirbnbUserDAO {
	
	// DB와 연동하는 객체.
		Connection con = null;
		
		// DB에 SQL문을 전송하는 객체.
		PreparedStatement pstmt = null;
		
		// SQL문을 실행한 후에 결과 값을 가지고 있는 객체.
		ResultSet rs = null;
		
		// 쿼리문을 저장할 변수
		String sql = null;
		
		
		private static AirbnbUserDAO instance;
		
		private AirbnbUserDAO() {  }
		
		public static AirbnbUserDAO getInstance() {
			
			if(instance == null) {
				instance = new AirbnbUserDAO();
			}
			
			return instance;
			
		}	// getInstance() end
		
		
		// DB연동
		public void openConn() {
			
			
			
			try {
				Context initCtx = new InitialContext();
				
				Context ctx =
						(Context)initCtx.lookup("java:comp/env");
				
				DataSource ds =
							(DataSource)ctx.lookup("jdbc/myoracle");
				
				
				con = ds.getConnection();

			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

		}	// openConn() end
		
		// DB에 연결되어 있던 자원 종료.
		public void closeConn(ResultSet rs, PreparedStatement pstmt, Connection con) {
			
				
					try {
						if(rs != null) rs.close();
						if(pstmt != null) pstmt.close();
						if(con != null) con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		
		}	// closeConn() end
		
		public void closeConn(
				PreparedStatement pstmt, Connection con) {
			
				
					try {
						if(pstmt != null) pstmt.close();
						if(con != null) con.close();
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
		
		}	// closeConn() end
		
		public int userCheck(String id, String pwd) {
			
			int result = 0;
			
			
			
			try {
				openConn();
				
				sql = "select * from airbnb_user where user_id = ?";
				
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, id);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					
					if(pwd.equals(rs.getString("user_pwd"))) {
						// 관리자인 경우(아이디와 비밀번호가 일치)
						result = 1;
						
					}else {
						// 비밀번호가 틀린경우 ( 아이디는 일치 비번다름.) 
						result = -1;
					}
				}
			
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				
				closeConn(rs, pstmt, con);
				
			}
			
			return result;
			
		}	// adminCheck() end
		
		public AirbnbUserDTO getUser(String id) {
			
			AirbnbUserDTO dto = null;
			
			try {
				openConn();
				
				sql = "select * from airbnb_user where user_id = ?";
				
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, id);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					
					dto = new AirbnbUserDTO();
					
					dto.setUserNum(rs.getInt("user_num"));
					dto.setUserId(rs.getString("user_id"));
					dto.setUserPwd(rs.getString("user_pwd"));
					dto.setUserEmail(rs.getString("user_email"));
					dto.setUserPhone(rs.getString("user_phone"));
					dto.setJoinDate(rs.getTimestamp("join_date"));
					dto.setLastLogin(rs.getTimestamp("last_login"));
					dto.setUserAddr(rs.getString("user_addr"));
					dto.setStatus(rs.getString("status"));
					dto.setProfileImage(rs.getString("profile_image"));
					
					System.out.println("DTO 디버깅 AirbnbUserDTO > " + dto.toString());
				} else {
					
					System.out.println("DTO 디버깅 user_id = " + id);
					
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				
				closeConn(rs, pstmt, con);
				
			}
			return dto;
		}	// getUser() end
		
		
		
		
		
		
		

}

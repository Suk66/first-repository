package com.airbnb.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class AdminDAO {
	
	// DB와 연동하는 객체.
	Connection con = null;
	
	// DB에 SQL문을 전송하는 객체.
	PreparedStatement pstmt = null;
	
	// SQL문을 실행한 후에 결과 값을 가지고 있는 객체.
	ResultSet rs = null;
	
	// 쿼리문을 저장할 변수
	String sql = null;
	
	
	private static AdminDAO instance;
	
	private AdminDAO() {  }
	
	public static AdminDAO getInstance() {
		
		if(instance == null) {
			instance = new AdminDAO();
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
	
	public int adminCheck(String id, String pwd) {
		
		int result = 0;
		
		
		
		try {
			openConn();
			
			sql = "select * from airbnb_admin where admin_id = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				if(pwd.equals(rs.getString("admin_pwd"))) {
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
	
	// 관리자에 대한 상세 정보를 조회하는 메서드.
	public AdminDTO getAdmin(String id) {
		
		AdminDTO dto = null;
		
		try {
			openConn();
			
			sql = "select * from airbnb_admin where admin_id = ?";
			
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				dto = new AdminDTO();
				
				dto.setAdmin_id(rs.getString(1));
				dto.setAdmin_pwd(rs.getString(2));
				dto.setAdmin_name(rs.getString(3));
				dto.setAdmin_email(rs.getString(4));
				dto.setAdmin_phone(rs.getString(5));
				dto.setAdmin_date(rs.getString(6));
				dto.setAdmin_type(rs.getString(7));
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			
			closeConn(rs, pstmt, con);
			
		}
		return dto;
	}	// getAdmin() end
	
	
	
	
	
	
	

}

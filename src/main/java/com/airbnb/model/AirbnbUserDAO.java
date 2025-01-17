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
					dto.setUserName(rs.getString("user_name"));
					dto.setUserEmail(rs.getString("user_email"));
					dto.setUserPhone(rs.getString("user_phone"));
					dto.setJoinDate(rs.getTimestamp("join_date"));
					dto.setLastLogin(rs.getTimestamp("last_login"));
					dto.setUserAddr(rs.getString("user_addr"));
					
					
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
		
		public int UserNew(AirbnbUserDTO dto) {
			
			int result = 0;
			int newUserNum = 0;
			
			
			
			try {
				openConn();
				
				sql = "insert into airbnb_user (user_num, user_id, user_pwd, user_name, user_email, user_phone, user_addr)" +
						"values (user_num_seq.NEXTVAL, ?, ?, ?, ?, ?, ?)";
				
				pstmt = con.prepareStatement(sql, new String[] {"user_num"});	// 생성된user_num 받아오기
				
				
				pstmt.setString(1, dto.getUserId());
				pstmt.setString(2, dto.getUserPwd());
				pstmt.setString(3, dto.getUserName());
				pstmt.setString(4, dto.getUserEmail());
				pstmt.setString(5, dto.getUserPhone());
				pstmt.setString(6, dto.getUserAddr());
				
				
				result = pstmt.executeUpdate();
				
				rs = pstmt.getGeneratedKeys();	// 자동증가된 num 가져오기
				if(rs.next()) {
					newUserNum = rs.getInt(1);
				}
				
				System.out.println("방금 막 생선된 유저입니다. user_num: " + newUserNum);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				closeConn(rs, pstmt, con);		
			}
			return result;
		}	// userNew() end
		
		public boolean checkEmail(String userId, String userEmail) {
			boolean isEmail = false;
			
			
			try {
				openConn();
				
				sql = "select count(*) from airbnb_user where user_email = ? and user_id != ?";
				
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, userEmail);
				pstmt.setString(2, userId);
				
				rs = pstmt.executeQuery();
				
				if(rs.next() && rs.getInt(1) > 0) {
					isEmail = true;
					
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				
				closeConn(rs, pstmt, con);
			}
			
			
			return isEmail;
	
		}	// checkEmail() end
		
		public int updateUser (String userId, String userPwd, String userName, String userEmail, String userPhone, String userAddr) {
			
			int result = 0;
			
			
			
			try {
				openConn();
				
				sql = "update airbnb_user set user_pwd =?, user_name = ?, user_email = ?, user_phone = ?, user_addr = ? where user_id =?";
				
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, userPwd);
				pstmt.setString(2, userName);
				pstmt.setString(3, userEmail);
				pstmt.setString(4, userPhone);
				pstmt.setString(5, userAddr);
				pstmt.setString(6, userId);
				
				result = pstmt.executeUpdate();
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				closeConn(pstmt, con);
			}
			return result;
		}	// updateUser() end
		
		public int deleteUser(String userId) {
			
			int result = 0;
			
			
			
			try {
				openConn();
				
				sql = "delete from airbnb_user where user_id = ?";
				
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, userId);
				
				result = pstmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				closeConn(pstmt, con);
			}
			return result;
	
		}	//deleteUser() end
		
		public List<AirbnbUserDTO> getAllUsers() {
			List<AirbnbUserDTO> userList = new ArrayList<AirbnbUserDTO>();
			
			
			
			try {
				openConn();
				
				sql = "select * from airbnb_user order by user_num asc";
			
				pstmt = con.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				while(rs.next()) {
					
					AirbnbUserDTO dto = new AirbnbUserDTO();
					dto.setUserNum(rs.getInt("user_num"));
					dto.setUserId(rs.getString("user_id"));
					dto.setUserPwd(rs.getString("user_pwd"));
					dto.setUserName(rs.getString("user_name"));
					dto.setUserEmail(rs.getString("user_email"));
					dto.setUserPhone(rs.getString("user_phone"));
					dto.setJoinDate(rs.getTimestamp("join_date"));
					dto.setLastLogin(rs.getTimestamp("last_login"));
					dto.setUserAddr(rs.getString("user_addr"));
					
					userList.add(dto);
					
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				
				closeConn(rs, pstmt, con);
			}
			return userList;
		
		} 	// getAllUser() end
		
		public void reUserNum(int deleteRe) {
			
			
			
			try {
				openConn();
				
				sql = "update airbnb_user set user_num = user_num -1 where user_num > ?";
				
				pstmt = con.prepareStatement(sql);
				
				pstmt.setInt(1, deleteRe);
				pstmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				closeConn(pstmt, con);
				
			}
			
		}	// reUserNum() end
		
		public int getUserNumById(String userId) {
			
			int userNum = 0;
			
			
			try {
				openConn();
				
				sql = "select user_num from airbnb_user where user_id = ?";
				
				pstmt = con.prepareStatement(sql);
				
				pstmt.setString(1, userId);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					
					userNum = rs.getInt("user_num");
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				
				closeConn(rs, pstmt, con);
				
			}
			return userNum;
			
		} 	// getUserNumById() end
		
		public int getRestoreUserNum(Connection con) {
			
			int RestoreUserNum = 1;
			
			
			
			try {
				
				
				sql = "select user_num from airbnb_user order by user_num asc";
				
				pstmt = con.prepareStatement(sql);
				
				rs = pstmt.executeQuery();
				
				List<Integer> exitNum = new ArrayList<>();
				
				while(rs.next()) {
					
					exitNum.add(rs.getInt("user_num"));
				}
				// 빈 자리 찾기.
				for (int i =1; i <= exitNum.size(); i++) {
					if(!exitNum.contains(i)) {
						RestoreUserNum = i;
						break;
					}
				}
				// 빈 공간이 없으면 마지막 값 +1 할당
				if(RestoreUserNum == exitNum.size() +1) {
					RestoreUserNum = exitNum.size() +1;
				}
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				
					try {
						if (pstmt != null) pstmt.close();
						if (rs != null) rs.close();
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}	
			}
			return RestoreUserNum;
		}
		
		
		
		
		
		
		
		
		
		
		

}

package com.airbnb.model;

import java.sql.Timestamp;

public class AirbnbUserDTO {
	
	private int userNum;
	private String userId;
	private String userPwd;
	private String userName;
	private String userEmail;
	private String userPhone;
	private Timestamp joinDate;
	private Timestamp lastLogin;
	private String userAddr;
	
	
	
	public AirbnbUserDTO() {}
	
	
	public AirbnbUserDTO(int userNum, String userId, String userName, String userPwd, String userEmail, String userPhone,
						Timestamp joinDate, Timestamp lastLogin, String userAddr) {
		
		
		this.userNum = userNum;
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.userEmail = userEmail;
		this.userPhone = userPhone;
		this.joinDate = joinDate;
		this.lastLogin = lastLogin;
		this.userAddr = userAddr;
		
		
	}


	public int getUserNum() {
		return userNum;
	}


	public void setUserNum(int userNum) {
		this.userNum = userNum;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getUserPwd() {
		return userPwd;
	}


	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}
	
	public String getUserName() {
		return userName;
	}
	
	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUserPhone() {
		return userPhone;
	}


	public void setUserPhone(String userPhone) {
		this.userPhone = userPhone;
	}


	public Timestamp getJoinDate() {
		return joinDate;
	}


	public void setJoinDate(Timestamp joinDate) {
		this.joinDate = joinDate;
	}


	public Timestamp getLastLogin() {
		return lastLogin;
	}


	public void setLastLogin(Timestamp lastLogin) {
		this.lastLogin = lastLogin;
	}


	public String getUserAddr() {
		return userAddr;
	}


	public void setUserAddr(String userAddr) {
		this.userAddr = userAddr;
	}

/*
	@Override
    public String toString() {
        return "AirbnbUserDTO{" +
                "userNum=" + userNum +
                ", userId='" + userId + '\'' +
                ", userPwd='" + userPwd + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userPhone='" + userPhone + '\'' +
                ", joinDate=" + joinDate +
                ", lastLogin=" + lastLogin +
                ", userAddr='" + userAddr + '\'' +
                ", status='" + status + '\'' +
                ", profileImage='" + profileImage + '\'' +
                '}';
 */       
        
     @Override
     public String toString() {
    	 return "AirbnbUserDTO{"+ 
    			 	"userNum=" +userNum+ 
    			 	", userId='" +userId+ '\'' + 
    			 	", userPwd='" +userPwd + '\'' +
    			 	", userName='" + userName + '\'' +
    			 	", userEmail='" + userEmail + '\'' +
    			 	", userPhone='" + userPhone + '\'' +
    			 	", joindate=" + joinDate +
    			 	", lastLogin=" + lastLogin +
    			 	", userAddr='" + userAddr + '\'' +
    			 	'}';
    	 
     }
        
        
        
    }
	



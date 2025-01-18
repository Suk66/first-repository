package com.airbnb.model;

import java.sql.Timestamp;

public class AirbnbRoomDTO {
	private int id; // 숙소 고유 ID
    private String adminId; // 호스트 ID
    private String title; // 숙소 제목
    private String location; // 숙소 위치
    private String description; // 숙소 설명
    private int price; // 1박 가격
    private String imagePath; // 숙소 이미지 경로
    private String link; // 예약 링크
    private Timestamp createdAt; // 숙소 등록일
    
    public AirbnbRoomDTO() {}
    
    public AirbnbRoomDTO(int id, String adminId, String title, String location, String description, int price, String imagePath, String link, Timestamp createdAt) {
        this.id = id;
        this.adminId = adminId;
        this.title = title;
        this.location = location;
        this.description = description;
        this.price = price;
        this.imagePath = imagePath;
        this.link = link;
        this.createdAt = createdAt;
    }

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getAdminId() {
		return adminId;
	}

	public void setAdminId(String adminId) {
		this.adminId = adminId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getImagePath() {
		return imagePath;
	}

	public void setImagePath(String imagePath) {
		this.imagePath = imagePath;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}
    
    
	

}

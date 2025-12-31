package com.crowncrest.model;

public class Room {
    private int id;
    private String roomName;
    private String image;
    private String description;
    private double price;
    private String status;
    
    
	public int getId() {
		return id;
	}
	public String getRoomName() {
		return roomName;
	}
	public String getImage() {
		return image;
	}
	public String getDescription() {
		return description;
	}
	public double getPrice() {
		return price;
	}
	public String getStatus() {
		return status;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setRoomName(String roomName) {
		this.roomName = roomName;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public void setStatus(String status) {
		this.status = status;
	}
    
    

}


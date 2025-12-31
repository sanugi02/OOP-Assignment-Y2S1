
package com.crowncrest.model;

public class Venue {
	private int id;
    private String image;
    private String venueName;
    private String description;
    private String details;
    private String status;
    
	public int getId() {
		return id;
	}
	public String getImage() {
		return image;
	}
	public String getVenueName() {
		return venueName;
	}
	public String getDescription() {
		return description;
	}
	public String getDetails() {
		return details;
	}
	public String getStatus() {
		return status;
	}
	public void setId(int id) {
		this.id = id;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public void setVenueName(String venueName) {
		this.venueName = venueName;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public void setDetails(String details) {
		this.details = details;
	}
	public void setStatus(String status) {
		this.status = status;
	}

    
    
}
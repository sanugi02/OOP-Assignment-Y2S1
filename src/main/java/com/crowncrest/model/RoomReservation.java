package com.crowncrest.model;

import java.sql.Date;

public class RoomReservation {

	private int id;
    private String name;	
	private String email;
	private String contactno;
	private Date checkin;
    private Date checkout;
    private int adults;
    private int children;
    private int noofrooms;
    
	public int getId() {
		return id;
	}
	
	public String getName() {
		return name;
	}
	
	public String getEmail() {
		return email;
	}
	
	public String getContactno() {
		return contactno;
	}
	
	public Date getCheckin() {
		return checkin;
	}
	
	public Date getCheckout() {
		return checkout;
	}
	
	public int getAdults() {
	    return adults;
	}
	
	public int getChildren() {
	    return children;
	}
	
	public int getNoofrooms() {
		return noofrooms;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public void setContactno(String contactno) {
		this.contactno = contactno;
	}
	
	public void setCheckin(Date checkin) {
		this.checkin = checkin;
	}
	
	public void setCheckout(Date checkout) {
		this.checkout = checkout;
	}
	
	public void setAdults(int adults) {
	    this.adults = adults;
	}

	public void setChildren(int children) {
	    this.children = children;
	}
	
	public void setNoofrooms(int noofrooms) {
		this.noofrooms = noofrooms;
	}
	
    
    
    
}

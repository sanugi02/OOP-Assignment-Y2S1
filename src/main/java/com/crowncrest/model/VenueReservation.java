package com.crowncrest.model;

public class VenueReservation {

    private int id;
    private String name;    
    private String email;
    private String contactno;
    private String eventType;
    private String guestCount;

    // Getters
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


    public String getEventType() {
        return eventType;
    }

    public String getGuestCount() {
        return guestCount;
    }
    
    
    // Setters
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

    public void setEventType(String eventType) {
        this.eventType = eventType;
    }

    public void setGuestCount(String guestCount) {
        this.guestCount = guestCount;
    }
    
    
}

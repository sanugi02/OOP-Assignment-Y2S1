package com.crowncrest.model;

public class EmployeeLogin {
    private int id;
    private String occupation;
    private String fullName;
    private String email;
    private String password;

    // Getters
    public int getId() {
        return id;
    }

    public String getOccupation() {
        return occupation;
    }

    public String getFullName() {
        return fullName;
    }

    public String getEmail() {
        return email;
    }

    public String getPassword() {
        return password;
    }

    // Setters
    public void setId(int id) {
        this.id = id;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation;
    }

    public void setFullName(String fullName) {
        this.fullName = fullName;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}

package com.crowncrest.model;

public class Offer {
    private int id;
    private String offerName;
    private String offerTablesType;
    private String startDate;
    private String endDate;
    private int discountPercentage;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOfferName() {
        return offerName;
    }

    public void setOfferName(String offerName) {
        this.offerName = offerName;
    }

    public String getOfferTablesType() {
        return offerTablesType;
    }

    public void setOfferTablesType(String offerTablesType) {
        this.offerTablesType = offerTablesType;
    }

    public String getStartDate() {
        return startDate;
    }

    public void setStartDate(String startDate) {
        this.startDate = startDate;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public int getDiscountPercentage() {
        return discountPercentage;
    }

    public void setDiscountPercentage(int discountPercentage) {
        this.discountPercentage = discountPercentage;
    }
}

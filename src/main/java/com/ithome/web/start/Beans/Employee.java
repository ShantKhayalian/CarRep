package com.ithome.web.start.Beans;


import java.util.Date;

public class Employee {
    private int id;
    private String firstName;
    private String firstNamRue;
    private String lastName;
    private String lastNameRu;
    private String perfession;
    private String perfessionRu;
    private String dateOfBirth;
    private String ExperianceYears;
    private String phoneNumber;
    private String email;
    private String address;
    private String addressRu;
    private String image;

    public Employee(int id, String firstName, String firstNamRue, String lastName, String lastNameRu, String perfession, String perfessionRu, String dateOfBirth, String experianceYears, String phoneNumber, String email, String address, String addressRu, String image) {
        this.id = id;
        this.firstName = firstName;
        this.firstNamRue = firstNamRue;
        this.lastName = lastName;
        this.lastNameRu = lastNameRu;
        this.perfession = perfession;
        this.perfessionRu = perfessionRu;
        this.dateOfBirth = dateOfBirth;
        ExperianceYears = experianceYears;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.addressRu = addressRu;
        this.image = image;
    }

    public Employee(String firstName, String firstNamRue, String lastName, String lastNameRu, String perfession, String perfessionRu, String dateOfBirth, String experianceYears, String phoneNumber, String email, String address, String addressRu) {
        this.firstName = firstName;
        this.firstNamRue = firstNamRue;
        this.lastName = lastName;
        this.lastNameRu = lastNameRu;
        this.perfession = perfession;
        this.perfessionRu = perfessionRu;
        this.dateOfBirth = dateOfBirth;
        ExperianceYears = experianceYears;
        this.phoneNumber = phoneNumber;
        this.email = email;
        this.address = address;
        this.addressRu = addressRu;
    }

    public Employee(String image) {
        this.image = image;
    }

    public Employee() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getFirstNamRue() {
        return firstNamRue;
    }

    public void setFirstNamRue(String firstNamRue) {
        this.firstNamRue = firstNamRue;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getLastNameRu() {
        return lastNameRu;
    }

    public void setLastNameRu(String lastNameRu) {
        this.lastNameRu = lastNameRu;
    }

    public String getPerfession() {
        return perfession;
    }

    public void setPerfession(String perfession) {
        this.perfession = perfession;
    }

    public String getPerfessionRu() {
        return perfessionRu;
    }

    public void setPerfessionRu(String perfessionRu) {
        this.perfessionRu = perfessionRu;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getExperianceYears() {
        return ExperianceYears;
    }

    public void setExperianceYears(String experianceYears) {
        ExperianceYears = experianceYears;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getAddressRu() {
        return addressRu;
    }

    public void setAddressRu(String addressRu) {
        this.addressRu = addressRu;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}

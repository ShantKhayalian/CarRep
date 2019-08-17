package com.ithome.web.start.Beans;

public class AboutUs {

    private int id;
    private String AboutUs_Eng;
    private String AboutUs_Rus;

    public AboutUs(int id, String aboutUs_Eng, String aboutUs_Rus) {
        this.id = id;
        AboutUs_Eng = aboutUs_Eng;
        AboutUs_Rus = aboutUs_Rus;
    }

    public AboutUs() {
    }

    public AboutUs(String aboutUs_Eng, String aboutUs_Rus) {
        AboutUs_Eng = aboutUs_Eng;
        AboutUs_Rus = aboutUs_Rus;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getAboutUs_Eng() {
        return AboutUs_Eng;
    }

    public void setAboutUs_Eng(String aboutUs_Eng) {
        AboutUs_Eng = aboutUs_Eng;
    }

    public String getAboutUs_Rus() {
        return AboutUs_Rus;
    }

    public void setAboutUs_Rus(String aboutUs_Rus) {
        AboutUs_Rus = aboutUs_Rus;
    }
}

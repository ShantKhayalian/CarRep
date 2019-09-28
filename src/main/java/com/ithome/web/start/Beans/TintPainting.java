package com.ithome.web.start.Beans;

public class TintPainting {
    private int id;
    private String Eng;
    private String Rus;

    public TintPainting(int id, String eng, String rus) {
        this.id = id;
        Eng = eng;
        Rus = rus;
    }

    public TintPainting(String eng, String rus) {
        Eng = eng;
        Rus = rus;
    }

    public TintPainting() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEng() {
        return Eng;
    }

    public void setEng(String eng) {
        Eng = eng;
    }

    public String getRus() {
        return Rus;
    }

    public void setRus(String rus) {
        Rus = rus;
    }
}

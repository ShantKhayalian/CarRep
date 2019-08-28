package com.ithome.web.start.Beans;

public class OilFilterChange {

    private int id;
    private String oilFilterChangeEng;
    private String oilFilterChangeRus;

    public OilFilterChange(int id, String oilFilterChangeEng, String oilFilterChangeRus) {
        this.id = id;
        this.oilFilterChangeEng = oilFilterChangeEng;
        this.oilFilterChangeRus = oilFilterChangeRus;
    }

    public OilFilterChange(String oilFilterChangeEng, String oilFilterChangeRus) {
        this.oilFilterChangeEng = oilFilterChangeEng;
        this.oilFilterChangeRus = oilFilterChangeRus;
    }

    public OilFilterChange() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getOilFilterChangeEng() {
        return oilFilterChangeEng;
    }

    public void setOilFilterChangeEng(String oilFilterChangeEng) {
        this.oilFilterChangeEng = oilFilterChangeEng;
    }

    public String getOilFilterChangeRus() {
        return oilFilterChangeRus;
    }

    public void setOilFilterChangeRus(String oilFilterChangeRus) {
        this.oilFilterChangeRus = oilFilterChangeRus;
    }
}

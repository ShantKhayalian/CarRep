package com.ithome.web.start.Beans;

public class OilFilterChange extends BeanHelper {

    private String oilFilterChangeEng;
    private String oilFilterChangeRus;

    public OilFilterChange(int id, String oilFilterChangeEng, String oilFilterChangeRus) {
        super(id);
        this.oilFilterChangeEng = oilFilterChangeEng;
        this.oilFilterChangeRus = oilFilterChangeRus;
    }

    public OilFilterChange(String oilFilterChangeEng, String oilFilterChangeRus) {
        this.oilFilterChangeEng = oilFilterChangeEng;
        this.oilFilterChangeRus = oilFilterChangeRus;
    }

    public OilFilterChange() {
    }

    public OilFilterChange(String fullText, boolean b) {

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
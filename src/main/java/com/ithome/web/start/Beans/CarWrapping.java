package com.ithome.web.start.Beans;

public class CarWrapping extends BeanHelper {

    private String CarWrappingEng;
    private String CarWrappingRus;

    public CarWrapping() {
    }

    public CarWrapping(int id, String carWrappingEng, String carWrappingRus) {
        super(id);
        CarWrappingEng = carWrappingEng;
        CarWrappingRus = carWrappingRus;
    }

    public CarWrapping(String carWrappingEng, String carWrappingRus) {
        CarWrappingEng = carWrappingEng;
        CarWrappingRus = carWrappingRus;
    }

    public String getCarWrappingEng() {
        return CarWrappingEng;
    }

    public void setCarWrappingEng(String carWrappingEng) {
        CarWrappingEng = carWrappingEng;
    }

    public String getCarWrappingRus() {
        return CarWrappingRus;
    }

    public void setCarWrappingRus(String carWrappingRus) {
        CarWrappingRus = carWrappingRus;
    }
}



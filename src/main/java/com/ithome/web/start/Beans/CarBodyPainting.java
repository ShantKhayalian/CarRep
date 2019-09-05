package com.ithome.web.start.Beans;

public class CarBodyPainting extends BeanHelper {

    private String CarBodyPaintingEng;
    private String CarBodyPaintingRus;


    public CarBodyPainting() {
    }

    public CarBodyPainting(int id, String carBodyPaintingEng, String carBodyPaintingRus) {
        super(id);
        CarBodyPaintingEng = carBodyPaintingEng;
        CarBodyPaintingRus = carBodyPaintingRus;
    }

    public CarBodyPainting(String carBodyPaintingEng, String carBodyPaintingRus) {
        CarBodyPaintingEng = carBodyPaintingEng;
        CarBodyPaintingRus = carBodyPaintingRus;
    }

    public String getCarBodyPaintingEng() {
        return CarBodyPaintingEng;
    }

    public void setCarBodyPaintingEng(String carBodyPaintingEng) {
        CarBodyPaintingEng = carBodyPaintingEng;
    }

    public String getCarBodyPaintingRus() {
        return CarBodyPaintingRus;
    }

    public void setCarBodyPaintingRus(String carBodyPaintingRus) {
        CarBodyPaintingRus = carBodyPaintingRus;
    }
}

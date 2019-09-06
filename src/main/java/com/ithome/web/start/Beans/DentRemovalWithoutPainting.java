package com.ithome.web.start.Beans;


public class DentRemovalWithoutPainting extends BeanHelper {

    private String DentRemovalWithoutPaintingEng;
    private String DentRemovalWithoutPaintingRus;

    public DentRemovalWithoutPainting() {
    }

    public DentRemovalWithoutPainting(int id, String dentRemovalWithoutPaintingEng, String dentRemovalWithoutPaintingRus) {
        super(id);
        DentRemovalWithoutPaintingEng = dentRemovalWithoutPaintingEng;
        DentRemovalWithoutPaintingRus = dentRemovalWithoutPaintingRus;
    }

    public DentRemovalWithoutPainting(String dentRemovalWithoutPaintingEng, String dentRemovalWithoutPaintingRus) {
        DentRemovalWithoutPaintingEng = dentRemovalWithoutPaintingEng;
        DentRemovalWithoutPaintingRus = dentRemovalWithoutPaintingRus;
    }

    public String getDentRemovalWithoutPaintingEng() {
        return DentRemovalWithoutPaintingEng;
    }

    public void setDentRemovalWithoutPaintingEng(String dentRemovalWithoutPaintingEng) {
        DentRemovalWithoutPaintingEng = dentRemovalWithoutPaintingEng;
    }

    public String getDentRemovalWithoutPaintingRus() {
        return DentRemovalWithoutPaintingRus;
    }

    public void setDentRemovalWithoutPaintingRus(String dentRemovalWithoutPaintingRus) {
        DentRemovalWithoutPaintingRus = dentRemovalWithoutPaintingRus;
    }
}


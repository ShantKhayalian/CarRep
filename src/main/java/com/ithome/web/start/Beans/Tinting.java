package com.ithome.web.start.Beans;

public class Tinting extends BeanHelper {

    private String TintingEng;
    private String TintingRus;

    public Tinting() {
    }

    public Tinting(int id, String tintingEng, String tintingRus) {
        super(id);
        TintingEng = tintingEng;
        TintingRus = tintingRus;
    }

    public Tinting(String tintingEng, String tintingRus) {
        TintingEng = tintingEng;
        TintingRus = tintingRus;
    }

    public String getTintingEng() {
        return TintingEng;
    }

    public void setTintingEng(String tintingEng) {
        TintingEng = tintingEng;
    }

    public String getTintingRus() {
        return TintingRus;
    }

    public void setTintingRus(String tintingRus) {
        TintingRus = tintingRus;
    }
}

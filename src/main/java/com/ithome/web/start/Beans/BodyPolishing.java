package com.ithome.web.start.Beans;


public class BodyPolishing extends BeanHelper {

    private String BodyPolishingEng;
    private String BodyPolishingRus;

    public BodyPolishing() {
    }

    public BodyPolishing(int id, String bodyPolishingEng, String bodyPolishingRus) {
        super(id);
        BodyPolishingEng = bodyPolishingEng;
        BodyPolishingRus = bodyPolishingRus;
    }

    public BodyPolishing(String bodyPolishingEng, String bodyPolishingRus) {
        BodyPolishingEng = bodyPolishingEng;
        BodyPolishingRus = bodyPolishingRus;
    }

    public String getBodyPolishingEng() {
        return BodyPolishingEng;
    }

    public void setBodyPolishingEng(String bodyPolishingEng) {
        BodyPolishingEng = bodyPolishingEng;
    }

    public String getBodyPolishingRus() {
        return BodyPolishingRus;
    }

    public void setBodyPolishingRus(String bodyPolishingRus) {
        BodyPolishingRus = bodyPolishingRus;
    }
}
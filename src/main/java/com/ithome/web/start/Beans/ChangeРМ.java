package com.ithome.web.start.Beans;

public class ChangeРМ extends BeanHelper {

    private String ChangeРМEng;
    private String ChangeРМRus;

    public ChangeРМ(int id, String changeРМEng, String changeРМRus) {
        super(id);
        ChangeРМEng = changeРМEng;
        ChangeРМRus = changeРМRus;
    }

    public ChangeРМ(String changeРМEng, String changeРМRus) {
        ChangeРМEng = changeРМEng;
        ChangeРМRus = changeРМRus;
    }

    public ChangeРМ() {
    }

    public String getChangeРМEng() {
        return ChangeРМEng;
    }

    public void setChangeРМEng(String changeРМEng) {
        ChangeРМEng = changeРМEng;
    }

    public String getChangeРМRus() {
        return ChangeРМRus;
    }

    public void setChangeРМRus(String changeРМRus) {
        ChangeРМRus = changeРМRus;
    }
}

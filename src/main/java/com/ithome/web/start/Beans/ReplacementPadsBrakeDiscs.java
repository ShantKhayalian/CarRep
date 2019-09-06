package com.ithome.web.start.Beans;

public class ReplacementPadsBrakeDiscs extends BeanHelper {

    private String replacementPadsBrakeDiscsEng;
    private String replacementPadsBrakeDiscsRus;

    public ReplacementPadsBrakeDiscs(int id, String replacementPadsBrakeDiscsEng, String replacementPadsBrakeDiscsRus) {
        super(id);
        this.replacementPadsBrakeDiscsEng = replacementPadsBrakeDiscsEng;
        this.replacementPadsBrakeDiscsRus = replacementPadsBrakeDiscsRus;
    }

    public ReplacementPadsBrakeDiscs(String replacementPadsBrakeDiscsEng, String replacementPadsBrakeDiscsRus) {
        this.replacementPadsBrakeDiscsEng = replacementPadsBrakeDiscsEng;
        this.replacementPadsBrakeDiscsRus = replacementPadsBrakeDiscsRus;
    }

    public ReplacementPadsBrakeDiscs() {
    }

    public String getReplacementPadsBrakeDiscsEng() {
        return replacementPadsBrakeDiscsEng;
    }

    public void setReplacementPadsBrakeDiscsEng(String replacementPadsBrakeDiscsEng) {
        this.replacementPadsBrakeDiscsEng = replacementPadsBrakeDiscsEng;
    }

    public String getReplacementPadsBrakeDiscsRus() {
        return replacementPadsBrakeDiscsRus;
    }

    public void setReplacementPadsBrakeDiscsRus(String replacementPadsBrakeDiscsRus) {
        this.replacementPadsBrakeDiscsRus = replacementPadsBrakeDiscsRus;
    }
}
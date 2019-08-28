package com.ithome.web.start.Beans;

public class ReplacementPadsBrakeDiscs {

    private int id;
    private String  replacementPadsBrakeDiscsEng;
    private String  replacementPadsBrakeDiscsRus;

    public ReplacementPadsBrakeDiscs(int id, String replacementPadsBrakeDiscsEng, String replacementPadsBrakeDiscsRus) {
        this.id = id;
        this.replacementPadsBrakeDiscsEng = replacementPadsBrakeDiscsEng;
        this.replacementPadsBrakeDiscsRus = replacementPadsBrakeDiscsRus;
    }

    public ReplacementPadsBrakeDiscs(String replacementPadsBrakeDiscsEng, String replacementPadsBrakeDiscsRus) {
        this.replacementPadsBrakeDiscsEng = replacementPadsBrakeDiscsEng;
        this.replacementPadsBrakeDiscsRus = replacementPadsBrakeDiscsRus;
    }

    public ReplacementPadsBrakeDiscs() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

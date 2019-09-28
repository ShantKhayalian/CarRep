package com.ithome.web.start.Beans;


public class CeramicCoating extends BeanHelper {

    private String CeramicCoatingEng;
    private String CeramicCoatingRus;

    public CeramicCoating() {
    }

    public CeramicCoating(int id, String ceramicCoatingEng, String ceramicCoatingRus) {
        super(id);
        CeramicCoatingEng = ceramicCoatingEng;
        CeramicCoatingRus = ceramicCoatingRus;
    }

    public CeramicCoating(String ceramicCoatingEng, String ceramicCoatingRus) {
        CeramicCoatingEng = ceramicCoatingEng;
        CeramicCoatingRus = ceramicCoatingRus;
    }

    public String getCeramicCoatingEng() {
        return CeramicCoatingEng;
    }

    public void setCeramicCoatingEng(String ceramicCoatingEng) {
        CeramicCoatingEng = ceramicCoatingEng;
    }

    public String getCeramicCoatingRus() {
        return CeramicCoatingRus;
    }

    public void setCeramicCoatingRus(String ceramicCoatingRus) {
        CeramicCoatingRus = ceramicCoatingRus;
    }
}

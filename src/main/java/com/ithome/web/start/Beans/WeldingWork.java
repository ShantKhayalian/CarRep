package com.ithome.web.start.Beans;

public class WeldingWork extends BeanHelper {

    private String WeldingWorkEng;
    private String WeldingWorkRus;

    public WeldingWork() {
    }

    public WeldingWork(int id, String weldingWorkEng, String weldingWorkRus) {
        super(id);
        WeldingWorkEng = weldingWorkEng;
        WeldingWorkRus = weldingWorkRus;
    }

    public WeldingWork(String weldingWorkEng, String weldingWorkRus) {
        WeldingWorkEng = weldingWorkEng;
        WeldingWorkRus = weldingWorkRus;
    }

    public String getWeldingWorkEng() {
        return WeldingWorkEng;
    }

    public void setWeldingWorkEng(String weldingWorkEng) {
        WeldingWorkEng = weldingWorkEng;
    }

    public String getWeldingWorkRus() {
        return WeldingWorkRus;
    }

    public void setWeldingWorkRus(String weldingWorkRus) {
        WeldingWorkRus = weldingWorkRus;
    }
}


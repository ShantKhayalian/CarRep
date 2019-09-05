package com.ithome.web.start.Beans;

public class TinPaintingWork extends BeanHelper {

    private String TinPaintingWorkEng;
    private String TinPaintingWorkRus;

    public TinPaintingWork() {
    }

    public TinPaintingWork(int id, String tinPaintingWorkEng, String tinPaintingWorkRus) {
        super(id);
        TinPaintingWorkEng = tinPaintingWorkEng;
        TinPaintingWorkRus = tinPaintingWorkRus;
    }

    public TinPaintingWork(String tinPaintingWorkEng, String tinPaintingWorkRus) {
        TinPaintingWorkEng = tinPaintingWorkEng;
        TinPaintingWorkRus = tinPaintingWorkRus;
    }

    public String getTinPaintingWorkEng() {
        return TinPaintingWorkEng;
    }

    public void setTinPaintingWorkEng(String tinPaintingWorkEng) {
        TinPaintingWorkEng = tinPaintingWorkEng;
    }

    public String getTinPaintingWorkRus() {
        return TinPaintingWorkRus;
    }

    public void setTinPaintingWorkRus(String tinPaintingWorkRus) {
        TinPaintingWorkRus = tinPaintingWorkRus;
    }
}

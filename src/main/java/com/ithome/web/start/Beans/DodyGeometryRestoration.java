package com.ithome.web.start.Beans;


public class DodyGeometryRestoration extends BeanHelper {

    private String DodyGeometryRestorationEng;
    private String DodyGeometryRestorationRus;

    public DodyGeometryRestoration() {
    }

    public DodyGeometryRestoration(int id, String dodyGeometryRestorationEng, String dodyGeometryRestorationRus) {
        super(id);
        DodyGeometryRestorationEng = dodyGeometryRestorationEng;
        DodyGeometryRestorationRus = dodyGeometryRestorationRus;
    }

    public DodyGeometryRestoration(String dodyGeometryRestorationEng, String dodyGeometryRestorationRus) {
        DodyGeometryRestorationEng = dodyGeometryRestorationEng;
        DodyGeometryRestorationRus = dodyGeometryRestorationRus;
    }

    public String getDodyGeometryRestorationEng() {
        return DodyGeometryRestorationEng;
    }

    public void setDodyGeometryRestorationEng(String dodyGeometryRestorationEng) {
        DodyGeometryRestorationEng = dodyGeometryRestorationEng;
    }

    public String getDodyGeometryRestorationRus() {
        return DodyGeometryRestorationRus;
    }

    public void setDodyGeometryRestorationRus(String dodyGeometryRestorationRus) {
        DodyGeometryRestorationRus = dodyGeometryRestorationRus;
    }
}

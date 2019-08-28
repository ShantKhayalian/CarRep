package com.ithome.web.start.Beans;

public class Electrician extends BeanHelper {

    private String ElectricianEng;
    private String ElectricianRus;

    public Electrician(int id, String electricianEng, String electricianRus) {
        super(id);
        ElectricianEng = electricianEng;
        ElectricianRus = electricianRus;
    }

    public String getElectricianEng() {
        return ElectricianEng;
    }

    public Electrician() {
    }

    public void setElectricianEng(String electricianEng) {
        ElectricianEng = electricianEng;
    }

    public String getElectricianRus() {
        return ElectricianRus;
    }

    public void setElectricianRus(String electricianRus) {
        ElectricianRus = electricianRus;
    }
}

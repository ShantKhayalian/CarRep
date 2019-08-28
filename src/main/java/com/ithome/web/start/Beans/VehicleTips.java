package com.ithome.web.start.Beans;

public class VehicleTips extends BeanHelper {

    private String vehicleTipsRus;
    private String vehicleTipsEng;
    private boolean isEng;

    public VehicleTips(int id, String vehicleTipsRus, String vehicleTipsEng, boolean isEng) {
        super(id);
        this.vehicleTipsRus = vehicleTipsRus;
        this.vehicleTipsEng = vehicleTipsEng;
        this.isEng = isEng;
    }

    public VehicleTips(String vehicleTipsRus, String vehicleTipsEng, boolean isEng) {
        this.vehicleTipsRus = vehicleTipsRus;
        this.vehicleTipsEng = vehicleTipsEng;
        this.isEng = isEng;
    }

    public VehicleTips(String vehicleTipsRus, String vehicleTipsEng) {
        this.vehicleTipsRus = vehicleTipsRus;
        this.vehicleTipsEng = vehicleTipsEng;
    }

    public VehicleTips() {
    }

    public String getVehicleTipsRus() {
        return vehicleTipsRus;
    }

    public void setVehicleTipsRus(String vehicleTipsRus) {
        this.vehicleTipsRus = vehicleTipsRus;
    }

    public String getVehicleTipsEng() {
        return vehicleTipsEng;
    }

    public void setVehicleTipsEng(String vehicleTipsEng) {
        this.vehicleTipsEng = vehicleTipsEng;
    }

    public boolean isEng() {
        return isEng;
    }

    public void setEng(boolean eng) {
        isEng = eng;
    }
}
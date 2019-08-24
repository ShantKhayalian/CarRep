package com.ithome.web.start.Beans;

public class VehicleTips {
    private int id;
    private String vehicleTipsRus;
    private String vehicleTipsEng;
    private boolean isEng;

    public VehicleTips(int id, String vehicleTipsRus, String vehicleTipsEng) {
        this.id = id;
        this.vehicleTipsRus = vehicleTipsRus;
        this.vehicleTipsEng = vehicleTipsEng;
    }

    public VehicleTips(String vehicleTipsRus, String vehicleTipsEng) {
        this.vehicleTipsRus = vehicleTipsRus;
        this.vehicleTipsEng = vehicleTipsEng;
    }

    public VehicleTips(String vehicleTipsRus) {
        this.vehicleTipsRus = vehicleTipsRus;
    }

    public VehicleTips(String vehicleTipsEng, boolean isEng) {
        this.vehicleTipsEng = vehicleTipsEng;
        this.isEng = isEng;
    }

    public VehicleTips() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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
}

package com.ithome.web.start.Beans;

public class VehicleTips {
    private int id;
    private String vehicleTipsRus;
    private String vehicleTipsEng;

    public VehicleTips(int id, String vehicleTipsRus, String vehicleTipsEng) {
        this.id = id;
        this.vehicleTipsRus = vehicleTipsRus;
        this.vehicleTipsEng = vehicleTipsEng;
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

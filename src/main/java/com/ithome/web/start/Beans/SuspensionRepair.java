package com.ithome.web.start.Beans;

public class SuspensionRepair extends BeanHelper {
    private String SuspensionRepairEng;
    private String SuspensionRepairRus;

    public SuspensionRepair(int id, String suspensionRepairEng, String suspensionRepairRus) {
        super(id);
        SuspensionRepairEng = suspensionRepairEng;
        SuspensionRepairRus = suspensionRepairRus;
    }

    public SuspensionRepair(String suspensionRepairEng, String suspensionRepairRus) {
        SuspensionRepairEng = suspensionRepairEng;
        SuspensionRepairRus = suspensionRepairRus;
    }

    public SuspensionRepair() {
    }

    public String getSuspensionRepairEng() {
        return SuspensionRepairEng;
    }

    public void setSuspensionRepairEng(String suspensionRepairEng) {
        SuspensionRepairEng = suspensionRepairEng;
    }

    public String getSuspensionRepairRus() {
        return SuspensionRepairRus;
    }

    public void setSuspensionRepairRus(String suspensionRepairRus) {
        SuspensionRepairRus = suspensionRepairRus;
    }
}

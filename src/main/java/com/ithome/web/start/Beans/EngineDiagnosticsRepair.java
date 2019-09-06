package com.ithome.web.start.Beans;

public class EngineDiagnosticsRepair extends BeanHelper {

    private String EngineDiagnosticsRepairEng;
    private String EngineDiagnosticsRepairRus;

    public EngineDiagnosticsRepair(int id, String engineDiagnosticsRepairEng, String engineDiagnosticsRepairRus) {
        super(id);
        EngineDiagnosticsRepairEng = engineDiagnosticsRepairEng;
        EngineDiagnosticsRepairRus = engineDiagnosticsRepairRus;
    }

    public EngineDiagnosticsRepair(String engineDiagnosticsRepairEng, String engineDiagnosticsRepairRus) {
        EngineDiagnosticsRepairEng = engineDiagnosticsRepairEng;
        EngineDiagnosticsRepairRus = engineDiagnosticsRepairRus;
    }

    public EngineDiagnosticsRepair() {
    }

    public String getEngineDiagnosticsRepairEng() {
        return EngineDiagnosticsRepairEng;
    }

    public void setEngineDiagnosticsRepairEng(String engineDiagnosticsRepairEng) {
        EngineDiagnosticsRepairEng = engineDiagnosticsRepairEng;
    }

    public String getEngineDiagnosticsRepairRus() {
        return EngineDiagnosticsRepairRus;
    }

    public void setEngineDiagnosticsRepairRus(String engineDiagnosticsRepairRus) {
        EngineDiagnosticsRepairRus = engineDiagnosticsRepairRus;
    }
}

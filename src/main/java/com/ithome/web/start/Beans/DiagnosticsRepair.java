package com.ithome.web.start.Beans;

public class DiagnosticsRepair extends BeanHelper {

    private String DiagnosticsRepairEng;
    private String DiagnosticsRepairRus;

    public DiagnosticsRepair(int id, String diagnosticsRepairEng, String diagnosticsRepairRus) {
        super(id);
        DiagnosticsRepairEng = diagnosticsRepairEng;
        DiagnosticsRepairRus = diagnosticsRepairRus;
    }

    public DiagnosticsRepair(String diagnosticsRepairEng, String diagnosticsRepairRus) {
        DiagnosticsRepairEng = diagnosticsRepairEng;
        DiagnosticsRepairRus = diagnosticsRepairRus;
    }

    public DiagnosticsRepair() {
    }

    public String getDiagnosticsRepairEng() {
        return DiagnosticsRepairEng;
    }

    public void setDiagnosticsRepairEng(String diagnosticsRepairEng) {
        DiagnosticsRepairEng = diagnosticsRepairEng;
    }

    public String getDiagnosticsRepairRus() {
        return DiagnosticsRepairRus;
    }

    public void setDiagnosticsRepairRus(String diagnosticsRepairRus) {
        DiagnosticsRepairRus = diagnosticsRepairRus;
    }
}

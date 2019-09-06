package com.ithome.web.start.Beans;

public class ComputerDiagnostics extends BeanHelper {

    private String ComputerDiagnosticsEng;
    private String ComputerDiagnosticsRus;

    public ComputerDiagnostics(int id, String computerDiagnosticsEng, String computerDiagnosticsRus) {
        super(id);
        ComputerDiagnosticsEng = computerDiagnosticsEng;
        ComputerDiagnosticsRus = computerDiagnosticsRus;
    }

    public ComputerDiagnostics(String computerDiagnosticsEng, String computerDiagnosticsRus) {
        ComputerDiagnosticsEng = computerDiagnosticsEng;
        ComputerDiagnosticsRus = computerDiagnosticsRus;
    }

    public ComputerDiagnostics() {
    }

    public String getComputerDiagnosticsEng() {
        return ComputerDiagnosticsEng;
    }

    public void setComputerDiagnosticsEng(String computerDiagnosticsEng) {
        ComputerDiagnosticsEng = computerDiagnosticsEng;
    }

    public String getComputerDiagnosticsRus() {
        return ComputerDiagnosticsRus;
    }

    public void setComputerDiagnosticsRus(String computerDiagnosticsRus) {
        ComputerDiagnosticsRus = computerDiagnosticsRus;
    }
}

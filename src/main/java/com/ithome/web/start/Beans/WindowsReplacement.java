package com.ithome.web.start.Beans;


public class WindowsReplacement extends BeanHelper {

    private String WindowsReplacementEng;
    private String WindowsReplacementRus;

    public WindowsReplacement() {
    }

    public WindowsReplacement(int id, String windowsReplacementEng, String windowsReplacementRus) {
        super(id);
        WindowsReplacementEng = windowsReplacementEng;
        WindowsReplacementRus = windowsReplacementRus;
    }

    public WindowsReplacement(String windowsReplacementEng, String windowsReplacementRus) {
        WindowsReplacementEng = windowsReplacementEng;
        WindowsReplacementRus = windowsReplacementRus;
    }

    public String getWindowsReplacementEng() {
        return WindowsReplacementEng;
    }

    public void setWindowsReplacementEng(String windowsReplacementEng) {
        WindowsReplacementEng = windowsReplacementEng;
    }

    public String getWindowsReplacementRus() {
        return WindowsReplacementRus;
    }

    public void setWindowsReplacementRus(String windowsReplacementRus) {
        WindowsReplacementRus = windowsReplacementRus;
    }
}

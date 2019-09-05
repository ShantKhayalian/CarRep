package com.ithome.web.start.Beans;

public class DiskRestoration extends BeanHelper {

    private String DiskRestorationEng;
    private String DiskRestorationRus;

    public DiskRestoration() {
    }

    public DiskRestoration(int id, String diskRestorationEng, String diskRestorationRus) {
        super(id);
        DiskRestorationEng = diskRestorationEng;
        DiskRestorationRus = diskRestorationRus;
    }

    public DiskRestoration(String diskRestorationEng, String diskRestorationRus) {
        DiskRestorationEng = diskRestorationEng;
        DiskRestorationRus = diskRestorationRus;
    }

    public String getDiskRestorationEng() {
        return DiskRestorationEng;
    }

    public void setDiskRestorationEng(String diskRestorationEng) {
        DiskRestorationEng = diskRestorationEng;
    }

    public String getDiskRestorationRus() {
        return DiskRestorationRus;
    }

    public void setDiskRestorationRus(String diskRestorationRus) {
        DiskRestorationRus = diskRestorationRus;
    }
}

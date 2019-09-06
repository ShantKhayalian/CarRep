package com.ithome.web.start.Beans;


public class LocalDentRemoval extends BeanHelper {

    private String LocalDentRemovalEng;
    private String LocalDentRemovalRus;

    public LocalDentRemoval() {
    }

    public LocalDentRemoval(int id, String localDentRemovalEng, String localDentRemovalRus) {
        super(id);
        LocalDentRemovalEng = localDentRemovalEng;
        LocalDentRemovalRus = localDentRemovalRus;
    }

    public LocalDentRemoval(String localDentRemovalEng, String localDentRemovalRus) {
        LocalDentRemovalEng = localDentRemovalEng;
        LocalDentRemovalRus = localDentRemovalRus;
    }

    public String getLocalDentRemovalEng() {
        return LocalDentRemovalEng;
    }

    public void setLocalDentRemovalEng(String localDentRemovalEng) {
        LocalDentRemovalEng = localDentRemovalEng;
    }

    public String getLocalDentRemovalRus() {
        return LocalDentRemovalRus;
    }

    public void setLocalDentRemovalRus(String localDentRemovalRus) {
        LocalDentRemovalRus = localDentRemovalRus;
    }
}

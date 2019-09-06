package com.ithome.web.start.Beans;


public class PreSalePreparation extends BeanHelper {

    private String PreSalePreparationEng;
    private String PreSalePreparationRus;

    public PreSalePreparation() {
    }

    public PreSalePreparation(int id, String preSalePreparationEng, String preSalePreparationRus) {
        super(id);
        PreSalePreparationEng = preSalePreparationEng;
        PreSalePreparationRus = preSalePreparationRus;
    }

    public PreSalePreparation(String preSalePreparationEng, String preSalePreparationRus) {
        PreSalePreparationEng = preSalePreparationEng;
        PreSalePreparationRus = preSalePreparationRus;
    }

    public String getPreSalePreparationEng() {
        return PreSalePreparationEng;
    }

    public void setPreSalePreparationEng(String preSalePreparationEng) {
        PreSalePreparationEng = preSalePreparationEng;
    }

    public String getPreSalePreparationRus() {
        return PreSalePreparationRus;
    }

    public void setPreSalePreparationRus(String preSalePreparationRus) {
        PreSalePreparationRus = preSalePreparationRus;
    }
}

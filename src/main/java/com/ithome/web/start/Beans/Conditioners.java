package com.ithome.web.start.Beans;

public class Conditioners extends BeanHelper{

    private String ConditionersEng;
    private String ConditionersRus;

    public Conditioners(int id, String conditionersEng, String conditionersRus) {
        super(id);
        ConditionersEng = conditionersEng;
        ConditionersRus = conditionersRus;
    }

    public Conditioners(String conditionersEng, String conditionersRus) {
        ConditionersEng = conditionersEng;
        ConditionersRus = conditionersRus;
    }

    public Conditioners() {
    }

    public String getConditionersEng() {
        return ConditionersEng;
    }

    public void setConditionersEng(String conditionersEng) {
        ConditionersEng = conditionersEng;
    }

    public String getConditionersRus() {
        return ConditionersRus;
    }

    public void setConditionersRus(String conditionersRus) {
        ConditionersRus = conditionersRus;
    }
}

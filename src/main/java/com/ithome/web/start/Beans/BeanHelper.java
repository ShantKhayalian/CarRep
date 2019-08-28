package com.ithome.web.start.Beans;

public abstract class BeanHelper {

    private int id;

    public BeanHelper(int id) {
        this.id = id;
    }

    public BeanHelper() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
}

package com.starock.lizhishop.entity;

public class Price {
    //Price类，定义一个软件不同授权方式的各个属性
    private int price_id;
    private int price_software;
    private String price_period;
    private float price_value;
    private float price_discount;

    public int getPrice_id() {
        return price_id;
    }

    public void setPrice_id(int price_id) {
        this.price_id = price_id;
    }

    public int getPrice_software() {
        return price_software;
    }

    public void setPrice_software(int price_software) {
        this.price_software = price_software;
    }

    public String getPrice_period() {
        return price_period;
    }

    public void setPrice_period(String price_period) {
        this.price_period = price_period;
    }

    public float getPrice_value() {
        return price_value;
    }

    public void setPrice_value(float price_value) {
        this.price_value = price_value;
    }

    public float getPrice_discount() {
        return price_discount;
    }

    public void setPrice_discount(float price_discount) {
        this.price_discount = price_discount;
    }
}

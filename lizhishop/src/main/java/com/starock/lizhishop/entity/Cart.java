package com.starock.lizhishop.entity;

public class Cart {
    //Cart类，定义购物车里每条数据的属性
    private int cart_id;
    private int cart_software;
    private String cart_softwarename;
    private float cart_price;
    private int cart_count;
    private String cart_period;
    private String cart_picurl;

    public int getCart_id() {
        return cart_id;
    }

    public void setCart_id(int cart_id) {
        this.cart_id = cart_id;
    }

    public int getCart_software() {
        return cart_software;
    }

    public void setCart_software(int cart_software) {
        this.cart_software = cart_software;
    }

    public String getCart_softwarename() {
        return cart_softwarename;
    }

    public void setCart_softwarename(String cart_softwarename) {
        this.cart_softwarename = cart_softwarename;
    }

    public float getCart_price() {
        return cart_price;
    }

    public void setCart_price(float cart_price) {
        this.cart_price = cart_price;
    }

    public int getCart_count() {
        return cart_count;
    }

    public void setCart_count(int cart_count) {
        this.cart_count = cart_count;
    }

    public String getCart_period() {
        return cart_period;
    }

    public void setCart_period(String cart_period) {
        this.cart_period = cart_period;
    }

    public String getCart_picurl() {
        return cart_picurl;
    }

    public void setCart_picurl(String cart_picurl) {
        this.cart_picurl = cart_picurl;
    }
}

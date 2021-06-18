package com.starock.lizhishop.service;

import com.starock.lizhishop.entity.Cart;
import com.starock.lizhishop.entity.Price;
import com.starock.lizhishop.entity.Software;
import com.starock.lizhishop.entity.User;

import java.util.List;

public interface SoftwareService {
    //只是一个接口罢了，具体实现看SoftwareServiceImpl
    List<Software> getSoftwaresOnWindows();
    List<Software> getSoftwaresOnMac();
    List<Software> getSoftwaresOnAndroid();
    List<Software> getSoftwaresOniOS();
    List<Software> getSoftwaresOnMobile();
    List<Software> getSoftwaresOnLinux();
    List<Software> getSoftwaresMadeInChina();
    List<Software> getSoftwaresMemberRecharge();
    List<Software> getDiscountSoftwares();
    List<Software> getRecommendSoftwares();
    Software getSoftwareDetail(int software_id);
    List<Price> getSoftwarePrice(int software_id);
    List<Cart> getShoppingCart(String cart_user);
    boolean changeQuantity(int cart_id, int cart_count);
    Cart ifExists(int cart_software, String cart_period);
    boolean deleteFromCart(int cart_id);
    boolean addToCart(int cart_software, String cart_softwarename, float cart_price, int cart_count,String cart_period,String cart_picurl);

    boolean addToUser(User user);
    User isRegister(Integer id);
}

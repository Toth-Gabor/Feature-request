package com.codecool.web.dao;

import com.codecool.web.model.Coupon;

import java.sql.SQLException;
import java.util.List;

public interface CouponDao {

    List<Coupon> findAll() throws SQLException;
    
    List<Coupon> findAllByUserId(int userId) throws SQLException;
    
    List<Coupon> findAllByShopIdAndUserId(int shopId, int userId) throws  SQLException;

    Coupon findById(int id) throws SQLException;

    Coupon add(String name, int userId, int percentage) throws SQLException;

    void add(int couponId, int... shopIds) throws SQLException;
}

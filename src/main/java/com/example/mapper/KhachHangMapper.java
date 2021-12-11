package com.example.mapper;

import com.example.model.KhachHang;

import java.sql.ResultSet;
import java.sql.SQLException;

public class KhachHangMapper implements RowMapper<KhachHang> {
    @Override
    public KhachHang mapRow(ResultSet rs) {
        KhachHang khachHang = new KhachHang();
        try {
            khachHang.setMaKH(rs.getInt("MaKH"));
            khachHang.setHoTenKH(rs.getString("HoTenKH"));
            khachHang.setSoDienThoai(rs.getString("SoDienThoai"));
            khachHang.setDiaChiKH(rs.getString("DiaChiKH"));
            khachHang.setNgaySinh(rs.getTimestamp("NgaySinh"));
            khachHang.setGioiTinh(rs.getInt("GioiTinh"));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return khachHang;
    }
}

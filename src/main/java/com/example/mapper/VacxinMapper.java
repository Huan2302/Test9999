package com.example.mapper;

import com.example.model.Vacxin;

import java.sql.ResultSet;
import java.sql.SQLException;

public class VacxinMapper implements RowMapper<Vacxin> {
    @Override
    public Vacxin mapRow(ResultSet rs) {
        Vacxin vacxin = new Vacxin();
        try {
            vacxin.setMaVacxin(rs.getInt("MaVacxin"));
            vacxin.setTenVacxin(rs.getString("TenVacxin"));
            vacxin.setSoMui(rs.getInt("SoMui"));
            vacxin.setMoTa(rs.getString("MoTa"));
            vacxin.setGiaVacxin(rs.getFloat("GiaVacxin"));
            vacxin.setTenHangSX(rs.getString("TenHangSX"));
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return vacxin;
    }
}

package com.example.dao.impl;

import com.example.mapper.VacxinMapper;
import com.example.model.Vacxin;

import java.util.List;

public class VacxinDAO extends AbstractDAO<Vacxin> {
    public List<Vacxin> findAll(){
        String sql = "select * from VACXIN";
        return query(sql,new VacxinMapper());
    }

    public List<Vacxin> search(String search){
        String sql = "select * from VACXIN where TenVacxin like '%"+search+"%'";
        return query(sql,new VacxinMapper());
    }

    public Long addVacxin(Vacxin vacxin){
        String sql = "INSERT INTO VACXIN (TenVacxin,SoMui,MoTa,GiaVacxin,TenHangSX) VALUES (?,?,?,?,?);";
        return insert(sql,vacxin.getTenVacxin(),vacxin.getSoMui(),vacxin.getMoTa()
                ,vacxin.getGiaVacxin(),vacxin.getTenHangSX());
    }

    public void updateVacxin(Vacxin vacxin){
        String sql = "UPDATE VACXIN SET TenVacxin = ?, SoMui = ?,MoTa = ?,GiaVacxin = ?,TenHangSX = ?" +
                " WHERE MaVacxin = ?";
        update(sql,vacxin.getTenVacxin(),vacxin.getSoMui(),vacxin.getMoTa()
                ,vacxin.getGiaVacxin(),vacxin.getTenHangSX(),vacxin.getMaVacxin());
    }


    public Vacxin findById(int id){
        String sql = "SELECT * FROM VACXIN WHERE MaVacxin = ?";
        List<Vacxin> vacxins = query(sql,new VacxinMapper(),id);
        return vacxins.isEmpty() ? null : vacxins.get(0);
    }

    public static void main(String[] args) {
        List<Vacxin> list = new VacxinDAO().findAll();
        for (Vacxin itrm :list){
            System.out.println(itrm);
        }
    }
}

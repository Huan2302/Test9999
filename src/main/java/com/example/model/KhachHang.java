package com.example.model;

import java.sql.Timestamp;

public class KhachHang {
    private int MaKH;
    private String HoTenKH;
    private String SoDienThoai;
    private String DiaChiKH;
    private Timestamp NgaySinh;
    private int GioiTinh;

    public int getMaKH() {
        return MaKH;
    }

    public void setMaKH(int maKH) {
        MaKH = maKH;
    }

    public String getHoTenKH() {
        return HoTenKH;
    }

    public void setHoTenKH(String hoTenKH) {
        HoTenKH = hoTenKH;
    }

    public String getSoDienThoai() {
        return SoDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        SoDienThoai = soDienThoai;
    }

    public String getDiaChiKH() {
        return DiaChiKH;
    }

    public void setDiaChiKH(String diaChiKH) {
        DiaChiKH = diaChiKH;
    }

    public Timestamp getNgaySinh() {
        return NgaySinh;
    }

    public void setNgaySinh(Timestamp ngaySinh) {
        NgaySinh = ngaySinh;
    }

    public int getGioiTinh() {
        return GioiTinh;
    }

    public void setGioiTinh(int gioiTinh) {
        GioiTinh = gioiTinh;
    }
}

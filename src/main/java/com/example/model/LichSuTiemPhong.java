package com.example.model;

import java.sql.Timestamp;

public class LichSuTiemPhong {
    private KhachHang MaKH;
    private Vacxin MaVacxin;
    private int STTMui;
    private Timestamp NgayTiemPhong;
    private Timestamp NgayTiemTiepTheo;

    public KhachHang getMaKH() {
        return MaKH;
    }

    public void setMaKH(KhachHang maKH) {
        MaKH = maKH;
    }

    public Vacxin getMaVacxin() {
        return MaVacxin;
    }

    public void setMaVacxin(Vacxin maVacxin) {
        MaVacxin = maVacxin;
    }

    public int getSTTMui() {
        return STTMui;
    }

    public void setSTTMui(int STTMui) {
        this.STTMui = STTMui;
    }

    public Timestamp getNgayTiemPhong() {
        return NgayTiemPhong;
    }

    public void setNgayTiemPhong(Timestamp ngayTiemPhong) {
        NgayTiemPhong = ngayTiemPhong;
    }

    public Timestamp getNgayTiemTiepTheo() {
        return NgayTiemTiepTheo;
    }

    public void setNgayTiemTiepTheo(Timestamp ngayTiemTiepTheo) {
        NgayTiemTiepTheo = ngayTiemTiepTheo;
    }
}

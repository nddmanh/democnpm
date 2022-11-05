package model;

public class GiaiDau {
    private int id, lanToChuc;
    private String ten, nam, diaDiem, moTa;

    public GiaiDau(int id, int lanToChuc, String ten, String nam, String diaDiem, String moTa) {
        this.id = id;
        this.lanToChuc = lanToChuc;
        this.ten = ten;
        this.nam = nam;
        this.diaDiem = diaDiem;
        this.moTa = moTa;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getLanToChuc() {
        return lanToChuc;
    }

    public void setLanToChuc(int lanToChuc) {
        this.lanToChuc = lanToChuc;
    }

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getNam() {
        return nam;
    }

    public void setNam(String nam) {
        this.nam = nam;
    }

    public String getDiaDiem() {
        return diaDiem;
    }

    public void setDiaDiem(String diaDiem) {
        this.diaDiem = diaDiem;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }
}

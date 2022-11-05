package model;

public class TranDau {
    private int id, idkythu;
    private KyThu doithu;
    private String ketQua;
    private String mucTangElo;
    private VongDau vongDau;
    
	public TranDau() {}
	
	public TranDau(int id, int idkythu, KyThu doithu, String ketQua, String mucTangElo, VongDau vongDau) {
		super();
		this.id = id;
		this.idkythu = idkythu;
		this.doithu = doithu;
		this.ketQua = ketQua;
		this.mucTangElo = mucTangElo;
		this.vongDau = vongDau;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdkythu() {
		return idkythu;
	}
	public void setIdkythu(int idkythu) {
		this.idkythu = idkythu;
	}
	public KyThu getDoithu() {
		return doithu;
	}
	public void setDoithu(KyThu doithu) {
		this.doithu = doithu;
	}
	public String getKetQua() {
		return ketQua;
	}
	public void setKetQua(String ketQua) {
		this.ketQua = ketQua;
	}
	public String getMucTangElo() {
		return mucTangElo;
	}
	public void setMucTangElo(String mucTangElo) {
		this.mucTangElo = mucTangElo;
	}
	public VongDau getVongDau() {
		return vongDau;
	}
	public void setVongDau(VongDau vongDau) {
		this.vongDau = vongDau;
	}

	@Override
	public String toString() {
		return "TranDau [id=" + id + ", idkythu=" + idkythu + ", doithu=" + doithu + ", ketQua=" + ketQua
				+ ", mucTangElo=" + mucTangElo + ", vongDau=" + vongDau + "]";
	}

   
}

package model;

public class KetQuaVong {
	private int id, vongdau, tongdiem, tongdiemdoithu, elo;
	private KyThu kyThu;
	
	
	public KetQuaVong() {}
	
	public KetQuaVong(int id, int vongdau, int tongdiem, int tongdiemdoithu, int elo, KyThu kyThu) {
		super();
		this.id = id;
		this.vongdau = vongdau;
		this.tongdiem = tongdiem;
		this.tongdiemdoithu = tongdiemdoithu;
		this.elo = elo;
		this.kyThu = kyThu;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getVongdau() {
		return vongdau;
	}

	public void setVongdau(int vongdau) {
		this.vongdau = vongdau;
	}

	public int getTongdiem() {
		return tongdiem;
	}

	public void setTongdiem(int tongdiem) {
		this.tongdiem = tongdiem;
	}

	public int getTongdiemdoithu() {
		return tongdiemdoithu;
	}

	public void setTongdiemdoithu(int tongdiemdoithu) {
		this.tongdiemdoithu = tongdiemdoithu;
	}

	public int getElo() {
		return elo;
	}

	public void setElo(int elo) {
		this.elo = elo;
	}

	public KyThu getKyThu() {
		return kyThu;
	}

	public void setKyThu(KyThu kyThu) {
		this.kyThu = kyThu;
	}

	@Override
	public String toString() {
		return "KetQuaVong [id=" + id + ", vongdau=" + vongdau + ", tongdiem=" + tongdiem + ", tongdiemdoithu="
				+ tongdiemdoithu + ", elo=" + elo + ", kyThu=" + kyThu + "]";
	}
	
	
	
	
}

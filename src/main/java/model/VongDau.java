package model;

public class VongDau {
    private int id, vongDau;

    public VongDau() {
    }

    public VongDau(int id, int vongDau) {
        this.id = id;
        this.vongDau = vongDau;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getVongDau() {
        return vongDau;
    }

    public void setVongDau(int vongDau) {
        this.vongDau = vongDau;
    }

	@Override
	public String toString() {
		return "VongDau [id=" + id + ", vongDau=" + vongDau + "]";
	}
    
    
}

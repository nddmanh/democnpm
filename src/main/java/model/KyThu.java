package model;

public class KyThu {
    private int id, elo, tongDiem, tongDiemDoiThu;
    private String name, username, password, quocTich, dob, email;
    
    public KyThu() {}

    public KyThu(int id, int elo, int tongDiem, int tongDiemDoiThu, String name, String username, String password, String quocTich, String dob, String email) {
        this.id = id;
        this.elo = elo;
        this.tongDiem = tongDiem;
        this.tongDiemDoiThu = tongDiemDoiThu;
        this.name = name;
        this.username = username;
        this.password = password;
        this.quocTich = quocTich;
        this.dob = dob;
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getElo() {
        return elo;
    }

    public void setElo(int elo) {
        this.elo = elo;
    }

    public int getTongDiem() {
        return tongDiem;
    }

    public void setTongDiem(int tongDiem) {
        this.tongDiem = tongDiem;
    }

    public int getTongDiemDoiThu() {
        return tongDiemDoiThu;
    }

    public void setTongDiemDoiThu(int tongDiemDoiThu) {
        this.tongDiemDoiThu = tongDiemDoiThu;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getQuocTich() {
        return quocTich;
    }

    public void setQuocTich(String quocTich) {
        this.quocTich = quocTich;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

	@Override
	public String toString() {
		return "KyThu [id=" + id + ", elo=" + elo + ", tongDiem=" + tongDiem + ", tongDiemDoiThu=" + tongDiemDoiThu
				+ ", name=" + name + ", username=" + username + ", password=" + password + ", quocTich=" + quocTich
				+ ", dob=" + dob + ", email=" + email + "]";
	}
    
    
}

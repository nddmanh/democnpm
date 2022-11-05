package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.KyThu;
import model.TranDau;
import model.VongDau;

public class TranDauDAO {
	private final Connection con;
    public TranDauDAO() {
        this.con = DAO.getInstance().getConnection();
    }

    public List<TranDau> getTranDaus(int vongDauSo, int idKythu) {
        List<TranDau> kq = new ArrayList<>();

        try {
            PreparedStatement p = con.prepareStatement(
            		"SELECT * FROM trandau \r\n"
            		+ "JOIN kythu ON trandau.iddoithu = kythu.idkythu \r\n"
            		+ "JOIN vongdau ON trandau.idvongdau = vongdau.idvongdau \r\n"
            		+ "WHERE vongdau.vongdau = ? AND trandau.idkythu = ?"
        		);
            
            p.setInt(1, vongDauSo);
            p.setInt(2, idKythu);
            
            ResultSet r = p.executeQuery();
            while(r.next()) {
            	TranDau td = new TranDau();
            	KyThu kt = new KyThu();
            	VongDau vd = new VongDau();
            	
                kt.setId(r.getInt("kythu.idkythu"));
                kt.setName(r.getString("kythu.name"));
                kt.setDob(r.getString("kythu.dob"));
                kt.setQuocTich(r.getString("kythu.quoctich"));
                vd.setVongDau(r.getInt("vongdau.idvongdau"));
                
                td.setDoithu(kt);
                td.setVongDau(vd);
                td.setId(r.getInt("trandau.idtrandau"));
                td.setKetQua(r.getString("trandau.ketqua"));
                td.setMucTangElo(r.getString("trandau.muctangelo"));
                
                kq.add(td);
            }
            return kq;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}

package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.KyThu;

public class KyThuDAO {
	private final Connection con;
    public KyThuDAO() {
        this.con = DAO.getInstance().getConnection();
    }
    
    public KyThu getKyThuById(int idKyThu) {
        KyThu kt = new KyThu();
        try {
            PreparedStatement p = con.prepareStatement("SELECT * FROM KyThu WHERE idkythu = ?");
            p.setInt(1, idKyThu);
            
            ResultSet r = p.executeQuery();
            while(r.next()) {
                kt.setId(r.getInt("idkythu"));
                kt.setName(r.getString("name"));
                kt.setDob(r.getString("dob"));
                kt.setQuocTich(r.getString("quoctich"));
                kt.setTongDiem(r.getInt("tongdiem"));
                kt.setTongDiemDoiThu(r.getInt("tongdiemdoithu"));
                kt.setElo(r.getInt("elo"));
            }
            return kt;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}

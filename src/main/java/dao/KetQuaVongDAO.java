package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.KetQuaVong;
import model.KyThu;

public class KetQuaVongDAO {
	private final Connection con;
    public KetQuaVongDAO() {
        this.con = DAO.getInstance().getConnection();
    }

    public List<KetQuaVong> getKyThus(int vongDauSo) {
        List<KetQuaVong> kq = new ArrayList<>();

        try {
            PreparedStatement p = con.prepareStatement("SELECT * FROM ketquavong JOIN kythu ON ketquavong.idkythu = kythu.idkythu WHERE ketquavong.vongdau = ?");
            p.setInt(1, vongDauSo);
            
            ResultSet r = p.executeQuery();
            while(r.next()) {
            	KetQuaVong kqv = new KetQuaVong();
            	KyThu kt = new KyThu();
            	
                kt.setId(r.getInt("kythu.idkythu"));
                kt.setName(r.getString("kythu.name"));
                kt.setDob(r.getString("kythu.dob"));
                kt.setQuocTich(r.getString("kythu.quoctich"));
                
                kqv.setTongdiem(r.getInt("ketquavong.tongdiem"));
                kqv.setTongdiemdoithu(r.getInt("ketquavong.tongdiemdoithu"));
                kqv.setElo(r.getInt("ketquavong.elo"));
                kqv.setVongdau(vongDauSo);
                kqv.setKyThu(kt);
                
                kq.add(kqv);
            }
            return kq;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}

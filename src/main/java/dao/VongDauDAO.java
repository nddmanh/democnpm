package dao;

import model.VongDau;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class VongDauDAO {
    private final Connection con;
    public VongDauDAO() {
        this.con = DAO.getInstance().getConnection();
    }

    public List<VongDau> getVongDaus() {
        List<VongDau> kq = new ArrayList<>();

        try {
            PreparedStatement p = con.prepareStatement("SELECT * FROM vongdau");

            ResultSet r = p.executeQuery();
            while(r.next()) {
                VongDau vongDau = new VongDau();
                vongDau.setId(r.getInt("idvongdau"));
                vongDau.setVongDau(r.getInt("vongdau"));
                kq.add(vongDau);
            }
            return kq;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}

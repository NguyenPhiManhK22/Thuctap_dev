package dao;

import model.DanhMuc;
import db.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class DanhMucDAO {
    public List<DanhMuc> getAllDanhMuc() {
        List<DanhMuc> list = new ArrayList<>();
        String sql = "SELECT * FROM DanhMuc";
        try (Connection conn = DBConnection.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {
            while (rs.next()) {
                list.add(new DanhMuc(rs.getInt("ma_danh_muc"), rs.getString("ten_danh_muc")));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;


import Model.QuanBo;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class QuanBoDAO extends DBContext{
    public List<QuanBo> getData() {
        List<QuanBo> list = new ArrayList<>();
        String sql = "Select * from quanBo";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                QuanBo p = new QuanBo();
                p.setId(rs.getString("ID"));
                p.setName(rs.getString("name"));
                p.setImg(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                p.setColor(rs.getString("color"));
                p.setSize(rs.getString("size"));
                p.setStatus(rs.getString("status"));
                p.setDescriber(rs.getString("describe"));

                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void delete(String id) {
        String sql = "delete from quanBo where ID = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void update(QuanBo p) {
        String query = "UPDATE [dbo].[quanBo]\n"
                + "   SET [name] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[color] = ?\n"
                + "      ,[size] = ?\n"
                + "      ,[describe] = ?\n"
                + "      ,[status] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, p.getName());
            ps.setString(2, p.getImg());
            ps.setInt(3, (int) p.getPrice());
            ps.setString(4, p.getColor());
            ps.setString(5, p.getSize());
            ps.setString(6, p.getDescriber());
            ps.setString(7, p.getStatus());
            ps.setString(8, p.getId());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public QuanBo getQuanBoByID(String id) {
        String query = "select * from quanBo where ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new QuanBo(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void insert(QuanBo p) {
        String sql = "insert into quanBo values(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getId());
            st.setString(2, p.getName());
            st.setString(3, p.getImg());
            st.setInt(4, p.getPrice());
            st.setString(5, p.getColor());
            st.setString(6, p.getSize());
            st.setString(7, p.getDescriber());
            st.setString(8, p.getStatus());

            st.executeUpdate();

        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<QuanBo> getListByPage(List<QuanBo> list,
            int start, int end) {
        List<QuanBo> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }
     public boolean checkID(String id) {
        String sql="select * from quanBo where id=?";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs=st.executeQuery();
            if(rs.next())
                return true;
        }catch(SQLException e){
            System.out.println(e);
        }
        return false;
    }
}

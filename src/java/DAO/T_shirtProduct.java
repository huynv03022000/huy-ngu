/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Shirt;
import Model.T_shirt;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class T_shirtProduct extends DBContext{
    
    public List<T_shirt> getData() {
        List<T_shirt> list = new ArrayList<>();
        String sql = "Select * from aoHe";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                T_shirt p = new T_shirt();
                p.setId(rs.getString("ID"));
                p.setName(rs.getString("name"));
                p.setImg(rs.getString("image"));
                p.setPrice(rs.getInt("price"));
                p.setColor(rs.getString("color"));
                p.setSize(rs.getString("size"));
                p.setDescriber(rs.getString("describe"));
                p.setStatus(rs.getString("status"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void delete(String id) {
        String sql = "delete from aoHe where ID = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void update(T_shirt p) {
       String query = "UPDATE [dbo].[aoHe]\n"
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

    public T_shirt getProductByID(String id) {
       String query = "select * from aoHe where ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new T_shirt(rs.getString(1), rs.getString(2), rs.getString(3), rs.getInt(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void insert(T_shirt p) {
        String sql = "insert into aoHe values( ?,?,?,?,?,?,?,?)";
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

    public List<T_shirt> getListByPage(List<T_shirt> list,
            int start, int end) {
        List<T_shirt> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }
     public boolean checkID(String id) {
        String sql="select * from aoHe where id=?";
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

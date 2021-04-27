/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Cart;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class CartDAO extends DBContext {

    public List<Cart> getData() {
        List<Cart> list = new ArrayList<>();
        String sql = "SELECT*\n"
                + "  FROM [WebBanhang].[dbo].[Cart] ORDER BY id ASC";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Cart p = new Cart();
                p.setId(rs.getInt("id"));
                p.setPid(rs.getString("pid"));
                p.setSize(rs.getString("size"));
                p.setPrice(rs.getInt("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setImg(rs.getString("img"));
                p.setDate(rs.getString("date"));
                p.setBuy(rs.getBoolean("buy"));
                p.setUsername(rs.getString("username"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void delete(String id) {
        String sql = "delete from  [WebBanhang].[dbo].[Cart] where id = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void update(Cart p) {
        String query = "UPDATE  [WebBanhang].[dbo].[Cart]\n"
                + "   SET [buy] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setBoolean(1, p.isBuy());
            ps.setInt(1, p.getId());

            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Cart getOrderByID(String id) {
        String query = "select * from  [WebBanhang].[dbo].[Cart] where ID = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Cart(rs.getString(1), rs.getInt(2), rs.getInt(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getBoolean(7), rs.getString(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void insert(Cart p) {
//        String sql = "insert into soMi values(?,?,?,?,?,?,?,?)";
        String sql = "insert into [WebBanhang].[dbo].[Cart] values(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getPid());
            st.setInt(2, p.getPrice());
            st.setInt(3, p.getQuantity());
            st.setString(4, p.getSize());
            st.setString(5, p.getImg());
            st.setString(6, p.getDate());
            st.setBoolean(7, p.isBuy());
            st.setString(8, p.getUsername());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);

        }
    }

    public List<Cart> getListByUser(List<Cart> list,
            String name) {
        List<Cart> arr = new ArrayList<>();
        for (int i = 1; i < list.size(); i++) {
            if (list.get(i).getUsername().equals(name)) {
                arr.add(list.get(i));
            }
        }
        return arr;
    }
//    public List<Product> getListByPage(List<Product> list , int start , int end){
//        List<Product> t = new ArrayList<Product>();
//         for (int i = start; i < end; i++) {
//            t.add(list.get(i));
//        }
//        return t;
//        
//    }

}

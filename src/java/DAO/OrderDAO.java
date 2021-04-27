/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Bill;
import Model.Order;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class OrderDAO extends DBContext {

    public List<Bill> getDataBoss() {
        List<Bill> list = new ArrayList<>();
        String sql = "SELECT*\n"
                + "  FROM [WebBanhang].[dbo].[Bill]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Bill p = new Bill();
                p.setId(rs.getInt("id"));
                p.setPid(rs.getString("pid"));
                p.setSize(rs.getString("size"));
                p.setPrice(rs.getFloat("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setNumberPhone(rs.getInt("numberPhone"));
                p.setAddress(rs.getString("address"));
                p.setUsername(rs.getString("username"));
                p.setDate(rs.getString("dateBuy"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Order> getData() {
        List<Order> list = new ArrayList<>();
        String sql = "SELECT*\n"
                + "  FROM [WebBanhang].[dbo].[Order]";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order p = new Order();
                p.setId(rs.getInt("id"));
                p.setPid(rs.getString("pid"));
                p.setSize(rs.getString("size"));
                p.setPrice(rs.getFloat("price"));
                p.setQuantity(rs.getInt("quantity"));
                p.setNumberPhone(rs.getInt("numberPhone"));
                p.setAddress(rs.getString("address"));
                p.setUsername(rs.getString("username"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void delete(String id) {
        String sql = "delete from  [WebBanhang].[dbo].[Order] where id = ? ";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void update(Order p) {
        String query = "UPDATE  [WebBanhang].[dbo].[Order]\n"
                + "   SET [pid] = ?\n"
                + "      ,[size] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[quantity] = ?\n"
                + "      ,[numberPhone] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[username] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, p.getPid());
            ps.setString(2, p.getSize());
            ps.setFloat(3, (float) p.getPrice());
            ps.setInt(4, p.getQuantity());
            ps.setInt(5, p.getNumberPhone());
            ps.setString(6, p.getUsername());
            ps.setString(7, p.getAddress());
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Order getOrderByUsername(String id) {
        String query = "select * from  [WebBanhang].[dbo].[Order] where username = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(query);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                return new Order(rs.getString(1), rs.getString(2), rs.getFloat(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void insert(Order p) {
//        String sql = "insert into soMi values(?,?,?,?,?,?,?,?)";
        String sql = "insert into [WebBanhang].[dbo].[Order] values(?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getPid());
            st.setString(2, p.getSize());
            st.setFloat(3, p.getPrice());
            st.setInt(4, p.getQuantity());
            st.setInt(5, p.getNumberPhone());
            st.setString(6, p.getAddress());
            st.setString(7, p.getUsername());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);

        }
    }

    public List<Order> getListByPage(List<Order> list,
            int start, int end) {
        List<Order> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
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

    public boolean checkID(String id) {
        String sql = "select * from Order where id=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void insertBill(Bill p) {
//        String sql = "insert into soMi values(?,?,?,?,?,?,?,?)";
        String sql = "insert into Bill values(?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, p.getPid());
            st.setString(2, p.getSize());
            st.setFloat(3, p.getPrice());
            st.setInt(4, p.getQuantity());
            st.setInt(5, p.getNumberPhone());
            st.setString(6, p.getAddress());
            st.setString(7, p.getUsername());
            st.setString(8, p.getDate());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}

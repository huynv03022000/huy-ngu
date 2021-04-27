/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Model.Admin;
import Model.Customer;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Admin
 */
public class loginDAO extends DBContext{
       public Customer checkAcount(String username, String password){
        String sql = "select * from Customer where username = ? and password = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if(rs.next())
                return new Customer(rs.getString(1),rs.getString(2), rs.getString(3), rs.getString(4),rs.getString(5));
        } catch (Exception e) {
        }
        return null;
    }

    public void insert(Customer c) {
        String sql="insert into Customer values(?,?,?,?,?)";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, c.getFullname());
            st.setString(2, c.getUsername());
            st.setString(3, c.getEmall());
            st.setString(4, c.getPassword());
            st.setString(5, c.getRepassword());
            st.executeUpdate();
        }catch(SQLException e){
            System.out.println(e);
        }
    }

   public boolean check(String name){
        String sql="select * from Customer where username=?";
        try{
            PreparedStatement st=connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs=st.executeQuery();
            if(rs.next())
                return true;
        }catch(SQLException e){
            System.out.println(e);
        }
        return false;
    }

    public Admin checkAcountAdmin(String name, String pass) {
         String sql = "select * from Admin where username = ? and password = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if(rs.next())
                return new Admin(rs.getString(1),rs.getString(2));
        } catch (Exception e) {
        }
        return null;
    }

}

package com.acrylicshop.dao;

import com.acrylicshop.model.Customer;
import com.acrylicshop.util.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CustomerDAO {

    // ================= REGISTER =================
    public boolean registerCustomer(Customer customer) {

        String sql = "INSERT INTO customers "
                + "(firstname,lastname, email, phone, password, address) "
                + "VALUES (?, ?, ?, ?, ?,?)";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, customer.getFirstname());
            ps.setString(2, customer.getLastname());
            ps.setString(3, customer.getEmail());
            ps.setString(4, customer.getPhone());
            ps.setString(5, customer.getPassword());
            ps.setString(6, customer.getAddress());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (SQLException e) {

            System.out.println(
                    "Registration Error: "
                    + e.getMessage()
            );

            return false;
        }
    }

    // ================= LOGIN =================
    public Customer loginCustomer(String email,
            String password) {

        String sql = "SELECT * FROM customers "
                + "WHERE email = ? AND password = ?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Customer customer = new Customer();

                customer.setCustomerId(
                        rs.getInt("customer_id"));

                customer.setFirstname(
                        rs.getString("firstname"));
                customer.setLastname(
                        rs.getString("lastname"));

                customer.setEmail(
                        rs.getString("email"));

                customer.setPhone(
                        rs.getString("phone"));

                customer.setAddress(
                        rs.getString("address"));

                return customer;
            }

        } catch (SQLException e) {

            System.out.println(
                    "Login Error: "
                    + e.getMessage()
            );
        }

        return null;
    }

    // ================= CHECK EMAIL =================
    public boolean emailExists(String email) {

        String sql
                = "SELECT customer_id FROM customers "
                + "WHERE email = ?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, email);

            ResultSet rs = ps.executeQuery();

            return rs.next();

        } catch (SQLException e) {

            System.out.println(
                    "Email Check Error: "
                    + e.getMessage()
            );

            return false;
        }
    }
}

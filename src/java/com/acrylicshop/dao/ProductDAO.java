package com.acrylicshop.dao;

import com.acrylicshop.model.Product;
import com.acrylicshop.util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

    // CREATE
    public boolean addProduct(Product product) {

        String sql = "INSERT INTO products "
                + "(product_name, description, price, stock, category_id, image_url) "
                + "VALUES (?, ?, ?, ?, ?, ?)";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, product.getProductName());
            ps.setString(2, product.getDescription());
            ps.setDouble(3, product.getPrice());
            ps.setInt(4, product.getStock());
            ps.setInt(5, product.getCategoryId());
            ps.setString(6, product.getImageUrl());

            int rows = ps.executeUpdate();

            System.out.println("Rows inserted: " + rows);

            return rows > 0;

        } catch (SQLException e) {

            System.out.println("========== INSERT ERROR ==========");
            e.printStackTrace();
            System.out.println("==================================");

            return false;
        }
    }

    // READ
    public List<Product> getAllProducts() {

        List<Product> products = new ArrayList<>();

        String sql = "SELECT * FROM products";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql); ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {

                Product product = new Product();

                product.setProductId(rs.getInt("product_id"));
                product.setProductName(rs.getString("product_name"));
                product.setDescription(rs.getString("description"));
                product.setPrice(rs.getDouble("price"));
                product.setStock(rs.getInt("stock"));
                product.setCategoryId(rs.getInt("category_id"));
                product.setImageUrl(rs.getString("image_url"));

                products.add(product);
            }

            System.out.println("Products found: " + products.size());

        } catch (SQLException e) {

            System.out.println("========== READ ERROR ==========");
            e.printStackTrace();
            System.out.println("===============================");
        }

        return products;
    }

    // UPDATE
    public boolean updateProduct(Product product) {

        String sql = "UPDATE products SET "
                + "product_name=?, "
                + "description=?, "
                + "price=?, "
                + "stock=?, "
                + "category_id=?, "
                + "image_url=? "
                + "WHERE product_id=?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, product.getProductName());
            ps.setString(2, product.getDescription());
            ps.setDouble(3, product.getPrice());
            ps.setInt(4, product.getStock());
            ps.setInt(5, product.getCategoryId());
            ps.setString(6, product.getImageUrl());
            ps.setInt(7, product.getProductId());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (SQLException e) {

            System.out.println("Error while updating product: "
                    + e.getMessage());

            return false;
        }
    }

    // DELETE
    public boolean deleteProduct(int productId) {

        String sql
                = "DELETE FROM products WHERE product_id=?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, productId);

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (SQLException e) {

            System.out.println("Error while deleting product: "
                    + e.getMessage());

            return false;
        }
    }

    // GET PRODUCT BY ID
    public Product getProductById(int productId) {

        String sql
                = "SELECT * FROM products WHERE product_id=?";

        try (Connection con = DBConnection.getConnection(); PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setInt(1, productId);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                Product product = new Product();

                product.setProductId(
                        rs.getInt("product_id"));

                product.setProductName(
                        rs.getString("product_name"));

                product.setDescription(
                        rs.getString("description"));

                product.setPrice(
                        rs.getDouble("price"));

                product.setStock(
                        rs.getInt("stock"));

                product.setCategoryId(
                        rs.getInt("category_id"));

                product.setImageUrl(
                        rs.getString("image_url"));

                return product;
            }

        } catch (SQLException e) {

            System.out.println("Error while finding product: "
                    + e.getMessage());
        }

        return null;
    }
}

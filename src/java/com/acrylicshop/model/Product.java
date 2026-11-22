package com.acrylicshop.model;

public class Product {

    private int productId;
    private String productName;
    private String description;
    private double price;
    private int stock;
    private int categoryId;
    private String imageUrl;

    public Product() {
    }

    public Product(String productName, String description,
                   double price, int stock,
                   int categoryId, String imageUrl) {

        this.productName = productName;
        this.description = description;
        this.price = price;
        this.stock = stock;
        this.categoryId = categoryId;
        this.imageUrl = imageUrl;
    }

    public Product(int productId, String productName,
                   String description, double price,
                   int stock, int categoryId,
                   String imageUrl) {

        this.productId = productId;
        this.productName = productName;
        this.description = description;
        this.price = price;
        this.stock = stock;
        this.categoryId = categoryId;
        this.imageUrl = imageUrl;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getImageUrl() {
        return imageUrl;
    }

    public void setImageUrl(String imageUrl) {
        this.imageUrl = imageUrl;
    }

    @Override
    public String toString() {

        return "Product ID: " + productId
                + ", Name: " + productName
                + ", Price: ₹" + price
                + ", Stock: " + stock;
    }
}
package com.acrylicshop.servlet;

import com.acrylicshop.dao.ProductDAO;
import com.acrylicshop.model.Product;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProductServlet")
public class ProductServlet extends HttpServlet {

    private ProductDAO productDAO;

    @Override
    public void init() {
        productDAO = new ProductDAO();
    }

    // READ
    @Override
    protected void doGet(HttpServletRequest request,
                         HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");

        try {

            if ("delete".equals(action)) {

                int id = Integer.parseInt(
                        request.getParameter("id"));

                productDAO.deleteProduct(id);

                response.sendRedirect("ProductServlet");

            } else if ("edit".equals(action)) {

                int id = Integer.parseInt(
                        request.getParameter("id"));

                Product product =
                        productDAO.getProductById(id);

                request.setAttribute(
                        "product", product);

                request.getRequestDispatcher(
                        "edit-product.jsp")
                        .forward(request, response);

            } else {

                List<Product> products =
                        productDAO.getAllProducts();

                request.setAttribute(
                        "products", products);

                request.getRequestDispatcher(
                        "products.jsp")
                        .forward(request, response);
            }

        } catch (Exception e) {

            request.setAttribute(
                    "error",
                    "Error: " + e.getMessage());

            request.getRequestDispatcher(
                    "products.jsp")
                    .forward(request, response);
        }
    }

    // CREATE + UPDATE
    @Override
    protected void doPost(HttpServletRequest request,
                          HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String action =
                request.getParameter("action");

        try {

            String productName =
                    request.getParameter("productName");

            String description =
                    request.getParameter("description");

            double price =
                    Double.parseDouble(
                            request.getParameter("price"));

            int stock =
                    Integer.parseInt(
                            request.getParameter("stock"));

            int categoryId =
                    Integer.parseInt(
                            request.getParameter("categoryId"));

            String imageUrl =
                    request.getParameter("imageUrl");

            Product product;

            if ("update".equals(action)) {

                int productId =
                        Integer.parseInt(
                                request.getParameter(
                                        "productId"));

                product = new Product(
                        productId,
                        productName,
                        description,
                        price,
                        stock,
                        categoryId,
                        imageUrl
                );

                productDAO.updateProduct(product);

            } else {

                product = new Product(
                        productName,
                        description,
                        price,
                        stock,
                        categoryId,
                        imageUrl
                );

                productDAO.addProduct(product);
            }

            response.sendRedirect(
                    "ProductServlet");

        } catch (Exception e) {

            request.setAttribute(
                    "error",
                    "Invalid data: "
                    + e.getMessage());

            request.getRequestDispatcher(
                    "products.jsp")
                    .forward(request, response);
        }
    }
}
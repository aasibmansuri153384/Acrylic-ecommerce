package com.acrylicshop.servlet;

import com.acrylicshop.dao.CustomerDAO;
import com.acrylicshop.model.Customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {

    private CustomerDAO customerDAO;

    @Override
    public void init() {
        customerDAO = new CustomerDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String firstname
                = request.getParameter("firstname");
        String lastname
                = request.getParameter("lastname");

        String email
                = request.getParameter("email");

        String phone
                = request.getParameter("phone");

        String password
                = request.getParameter("password");

        String confirmPassword
                = request.getParameter("confirmPassword");

        String address
                = request.getParameter("address");

        // Basic validation
        if (firstname == null || firstname.trim().isEmpty() || lastname == null || lastname.trim().isEmpty()
                || email == null || email.trim().isEmpty()
                || password == null || password.isEmpty()) {

            request.setAttribute(
                    "error",
                    "Please fill all required fields."
            );

            request.getRequestDispatcher(
                    "register.jsp")
                    .forward(request, response);

            return;
        }

        // Password validation
        if (!password.equals(confirmPassword)) {

            request.setAttribute(
                    "error",
                    "Passwords do not match."
            );

            request.getRequestDispatcher(
                    "register.jsp")
                    .forward(request, response);

            return;
        }

        // Check duplicate email
        if (customerDAO.emailExists(email)) {

            request.setAttribute(
                    "error",
                    "An account with this email already exists."
            );

            request.getRequestDispatcher(
                    "register.jsp")
                    .forward(request, response);

            return;
        }

        Customer customer
                = new Customer(
                        firstname,
                        lastname,
                        email,
                        phone,
                        password,
                        address
                );

        boolean success
                = customerDAO.registerCustomer(customer);

        if (success) {

            response.sendRedirect(
                    request.getContextPath()
                    + "/login.jsp?registered=true"
            );

        } else {

            request.setAttribute(
                    "error",
                    "Registration failed. Please try again."
            );

            request.getRequestDispatcher(
                    "register.jsp")
                    .forward(request, response);
        }
    }
}

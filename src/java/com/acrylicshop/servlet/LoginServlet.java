package com.acrylicshop.servlet;

import com.acrylicshop.dao.CustomerDAO;
import com.acrylicshop.model.Customer;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

    private CustomerDAO customerDAO;

    @Override
    public void init() {
        customerDAO = new CustomerDAO();
    }

    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response)
            throws ServletException, IOException {

        String email
                = request.getParameter("email");

        String password
                = request.getParameter("password");

        if (email == null || email.trim().isEmpty()
                || password == null || password.isEmpty()) {

            request.setAttribute(
                    "error",
                    "Please enter email and password."
            );

            request.getRequestDispatcher(
                    "login.jsp")
                    .forward(request, response);

            return;
        }

        Customer customer
                = customerDAO.loginCustomer(
                        email,
                        password
                );

        if (customer != null) {

            // Create session
            HttpSession session
                    = request.getSession();

            session.setAttribute(
                    "customerId",
                    customer.getCustomerId()
            );

            session.setAttribute(
                    "customerFirstname",
                    customer.getFirstname()
            );
            session.setAttribute(
                    "customerLastname",
                    customer.getLastname()
            );

            session.setAttribute(
                    "customerEmail",
                    customer.getEmail()
            );

            // Session timeout: 30 minutes
            session.setMaxInactiveInterval(
                    30 * 60
            );

            response.sendRedirect(
                    request.getContextPath()
                    + "/index.jsp"
            );

        } else {

            request.setAttribute(
                    "error",
                    "Invalid email or password."
            );

            request.getRequestDispatcher(
                    "login.jsp")
                    .forward(request, response);
        }
    }
}

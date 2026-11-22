<%@page contentType="text/html" pageEncoding="UTF-8" %>

    <!DOCTYPE html>
    <html lang="en">

    <head>

        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Login | AcrylicAura</title>

        <link rel="stylesheet" href="css/bootstrap.min.css">

        <link rel="stylesheet" href="css/login.css">

    </head>


    <body>


        <div class="login-card">

            <div class="logo">
                AcrylicAura
            </div>

            <p class="subtitle">
                Welcome back! Login to your account.
            </p>


            <% String error=(String) request.getAttribute("error"); if (error !=null) { %>

                <div class="alert alert-danger">
                    <%= error %>
                </div>

                <% } String registered=request.getParameter("registered"); if ("true".equals(registered)) { %>

                    <div class="alert alert-success">
                        Registration successful!
                        Please login.
                    </div>

                    <% } %>


                        <form action="LoginServlet" method="post">


                            <div class="mb-3">

                                <label class="form-label">
                                    Email Address
                                </label>

                                <input type="email" name="email" class="form-control" placeholder="Enter your email"
                                    required>

                            </div>


                            <div class="mb-4">

                                <label class="form-label">
                                    Password
                                </label>

                                <input type="password" name="password" class="form-control"
                                    placeholder="Enter your password" required>

                            </div>


                            <button type="submit" class="login-btn">

                                Login

                            </button>

                        </form>


                        <div class="text-center mt-4">

                            Don't have an account?

                            <a href="register.jsp" class="register-link">

                                Create Account

                            </a>

                        </div>


                        <div class="text-center mt-3">

                            <a href="index.jsp" class="back-home">

                                ← Back to Home

                            </a>

                        </div>

        </div>


    </body>

    </html>
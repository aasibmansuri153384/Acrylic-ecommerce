<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0">

    <title>Create Account | AcrylicAura</title>

    <link rel="stylesheet"
          href="css/bootstrap.min.css">

    <link rel="stylesheet" href="css/register.css">

</head>


<body>


<div class="register-card">

    <div class="logo">
        AcrylicAura
    </div>

    <p class="subtitle">
        Create your account and start shopping.
    </p>


    <%
        String error =
                (String) request.getAttribute("error");

        if (error != null) {
    %>

        <div class="alert alert-danger">
            <%= error %>
        </div>

    <%
        }
    %>


    <form action="RegisterServlet"
          method="post">


        <div class="row">


            <div class="col-md-6 mb-3">

                <label class="form-label">
                    Firstname
                </label>

                <input type="text"
                       name="firstname"
                       class="form-control"
                       placeholder="Your name"
                       required>

            </div>


            <div class="col-md-6 mb-3">

                <label class="form-label">
                    LastName
                </label>
                <input type="text"
                       name="lastname"
                       class="form-control"
                       placeholder="Lastname">

                

            </div>


        </div>




        <div class="mb-3">

            <label class="form-label">
                Phone Number *
            </label>

            <input type="tel"
                       name="phone"
                       class="form-control"
                       placeholder="Phone number">

        </div>
        <div class="mb-3">

            <label class="form-label">
                Email Address *
            </label>

            <input type="email"
                   name="email"
                   class="form-control"
                   placeholder="you@example.com"
                   required>

        </div>


        <div class="row">


            <div class="col-md-6 mb-3">

                <label class="form-label">
                    Password *
                </label>

                <input type="password"
                       name="password"
                       class="form-control"
                       placeholder="Create password"
                       
                       required>

            </div>


            <div class="col-md-6 mb-3">

                <label class="form-label">
                    Confirm Password *
                </label>

                <input type="password"
                       name="confirmPassword"
                       class="form-control"
                       placeholder="Confirm password"
                       
                       required>

            </div>


        </div>


        <div class="mb-4">

            <label class="form-label">
                Address
            </label>

            <textarea name="address"
                      class="form-control"
                      rows="3"
                      placeholder="Your delivery address"></textarea>

        </div>


        <button type="submit"
                class="register-btn">

            Create Account

        </button>

    </form>


    <div class="text-center mt-4">

        Already have an account?

        <a href="login.jsp"
           class="login-link">

            Login

        </a>

    </div>


</div>


</body>

</html>
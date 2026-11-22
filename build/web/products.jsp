<%@page import="java.util.List" %>
<%@page import="com.acrylicshop.model.Product" %>
<%
    boolean isLoggedIn =
        session.getAttribute("loggedInUser") != null;
%>

<!DOCTYPE html>
<html lang="en">

    <head>

        <meta charset="UTF-8">

        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <title>Our Products | AcrylicAura</title>

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/products.css">



    </head>


    <body>


        <!-- ================================================= -->
        <!-- NAVBAR -->
        <!-- ================================================= -->

        <nav class="navbar navbar-expand-lg sticky-top">

            <div class="container">

                <a class="navbar-brand" href="index.jsp">

                    AcrylicAura

                </a>


                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarMenu">

                    <span class="navbar-toggler-icon"></span>

                </button>


                <div class="collapse navbar-collapse" id="navbarMenu">

                    <ul class="navbar-nav ms-auto align-items-lg-center">

                        <li class="nav-item">

                            <a class="nav-link" href="index.jsp">

                                Home

                            </a>

                        </li>


                        <li class="nav-item">

                            <a class="nav-link" href="ProductServlet">

                                Products

                            </a>

                        </li>


                        <li class="nav-item">

                            <a class="nav-link" href="index.jsp#about">

                                About

                            </a>

                        </li>


                        <li class="nav-item">

                            <a class="nav-link" href="index.jsp#delivery">

                                Delivery

                            </a>

                        </li>


                        <li class="nav-item ms-lg-3 mt-2 mt-lg-0">

                            <a class="nav-link home-btn" href="index.jsp">

                                Home

                            </a>

                        </li>

                    </ul>

                </div>

            </div>

        </nav>



        <!-- ================================================= -->
        <!-- HERO -->
        <!-- ================================================= -->

        <section class="products-hero">

            <div>

                <h1>Our Acrylic Collection</h1>

                <p>
                    Discover beautiful, premium and
                    customizable acrylic products.
                </p>

            </div>

        </section>



        <!-- ================================================= -->
        <!-- SEARCH -->
        <!-- ================================================= -->

        <div class="container search-container">

            <div class="search-box">

                <div class="row align-items-center">

                    <div class="col">

                        <input type="text" id="searchInput" class="form-control"
                               placeholder="Search acrylic products...">

                    </div>

                    <div class="col-auto">

                        <button class="search-btn" onclick="searchProducts()">

                            Search

                        </button>

                    </div>

                </div>

            </div>

        </div>



        <!-- ================================================= -->
        <!-- PRODUCTS -->
        <!-- ================================================= -->

        <section class="products-section">

            <div class="container">


                <div class="section-heading">

                    <h2>Shop Our Products</h2>

                    <p>
                        Handpicked acrylic products made
                        for your home, office and gifting.
                    </p>

                </div>



                <!-- ADMIN ADD PRODUCT -->

                <div class="d-flex
                     justify-content-between
                     align-items-center
                     mb-4">

                    <span class="text-muted">

                        <% List<Product> products
                                    = (List<Product>) request.getAttribute("products");

                            if (products != null) {
                        %>

                        <%= products.size()%> Products

                        <% } %>

                    </span>


                    <a href="add-product.jsp" class="btn" style="
                       background:#4a3328;
                       color:white;
                       border-radius:25px;
                       padding:10px 22px;">

                        + Add Product

                    </a>

                </div>



                <!-- PRODUCT GRID -->

                <div class="row g-4" id="productGrid">


                    <% if (products != null && !products.isEmpty()) {
                            for (Product p : products) {
                                String stockClass = p.getStock() > 0
                                        ? "stock"
                                        : "stock out-stock";

                                String stockText
                                        = p.getStock() > 0
                                        ? p.getStock() + " available"
                                        : "Out of Stock";

                                String image
                                        = p.getImageUrl();

                                if (image == null
                                        || image.trim().isEmpty()) {

                                    image = "images/product1.jpg";
                                }

                    %>


                    <!-- PRODUCT -->

                    <div class="col-xl-3
                         col-lg-3
                         col-md-4
                         product-item" data-name="<%=p.getProductName().toLowerCase()%>">


                        <div class="product-card">


                            <!-- IMAGE -->

                            <div class="product-image-container">

                                <img src="<%=image%>" class="product-image" alt="<%=p.getProductName()%>"
                                     onerror="this.src='images/product1.jpg';">


                                <span class="product-badge">

                                    Acrylic

                                </span>


                                <!--                                        <button class="heart-btn" onclick="toggleHeart(this)">

                                    ♡

                                </button>-->

                            </div>



                            <!-- BODY -->

                            <div class="product-body">


                                <div class="category-text">

                                    Premium Acrylic

                                </div>


                                <h3 class="product-name">

                                    <%=p.getProductName()%>

                                </h3>


                                <p class="product-description">

                                    <%=p.getDescription()%>

                                </p>


                                <div class="d-flex
                                     justify-content-between
                                     align-items-center
                                     mt-3">


                                    <span class="price">

                                        $ <%=String.format("%.2f", p.getPrice())%>

                                    </span>


                                    <span class="<%=stockClass%>">

                                        <%=stockText%>

                                    </span>

                                </div>



                                <!-- CART BUTTON -->

                                        <!-- <button class="cart-btn" onclick="addToCart('<%=p.getProductName()%>')">

                                          + Add to Cart

                                        </button> -->


                                <!-- new cart -->


                                <% if (isLoggedIn) {%>

                                <button class="cart-btn" onclick="addToCart('<%=p.getProductName()%>')">

                                    + Add to Cart

                                </button>

                                <% } else { %>

                                <a href="login.jsp?redirect=ProductServlet"
                                   class="cart-btn text-center text-decoration-none">

                                    Login to Add Cart

                                </a>

                                <% }%>



                                <!-- CRUD BUTTONS -->

                                <div class="admin-actions">


                                    <a class="edit-btn"
                                       href="ProductServlet?action=edit&id=<%=p.getProductId()%>">

                                        Edit

                                    </a>


                                    <a class="delete-btn"
                                       href="ProductServlet?action=delete&id=<%=p.getProductId()%>"
                                       onclick="return confirm('Are you sure you want to delete this product?');">

                                        Delete

                                    </a>


                                </div>


                            </div>

                        </div>

                    </div>


                    <% }
                            } else { %>


                    <!-- EMPTY -->

                    <div class="col-12">

                        <div class="empty-products">

                            <div style="font-size:60px;">
                                🛍️
                            </div>

                            <h3>
                                No Products Found
                            </h3>

                            <p class="text-muted">

                                Start adding your acrylic
                                products to the store.

                            </p>

                            <a href="add-product.jsp" class="btn" style="
                               background:#4a3328;
                               color:white;
                               border-radius:25px;">

                                + Add Your First Product

                            </a>

                        </div>

                    </div>


                    <% }%>


                </div>

            </div>

        </section>



        <!-- ================================================= -->
        <!-- WHY SHOP WITH US -->
        <!-- ================================================= -->

        <section style="
                 background:#eee7e1;
                 padding:70px 0;">

            <div class="container">

                <div class="text-center mb-5">

                    <h2 style="
                        color:#4a3328;
                        font-weight:700;">

                        Why Shop With Us?

                    </h2>

                    <p class="text-muted">

                        Quality and creativity in every
                        acrylic product.

                    </p>

                </div>


                <div class="row g-4">


                    <div class="col-md-4">

                        <div class="text-center">

                            <div style="font-size:40px;">
                                ✨
                            </div>

                            <h5 class="mt-3">
                                Premium Quality
                            </h5>

                            <p class="text-muted">
                                Quality acrylic materials with
                                clean and durable finishing.
                            </p>

                        </div>

                    </div>


                    <div class="col-md-4">

                        <div class="text-center">

                            <div style="font-size:40px;">
                                🎨
                            </div>

                            <h5 class="mt-3">
                                Customization
                            </h5>

                            <p class="text-muted">
                                Create personalized products
                                according to your requirements.
                            </p>

                        </div>

                    </div>


                    <div class="col-md-4">

                        <div class="text-center">

                            <div style="font-size:40px;">
                                🚚
                            </div>

                            <h5 class="mt-3">
                                Safe Delivery
                            </h5>

                            <p class="text-muted">
                                Carefully packed products
                                delivered safely to your doorstep.
                            </p>

                        </div>

                    </div>


                </div>

            </div>

        </section>



        <!-- ================================================= -->
        <!-- FOOTER -->
        <!-- ================================================= -->

        <footer>

            <div class="container">

                <div class="row g-4">


                    <div class="col-md-5">

                        <div class="footer-logo">
                            AcrylicAura
                        </div>

                        <p class="mt-3">

                            Premium acrylic products for
                            homes, offices, gifting and
                            special occasions.

                        </p>

                    </div>


                    <div class="col-md-2">

                        <h5>
                            Quick Links
                        </h5>

                        <p>
                            <a href="index.jsp">
                                Home
                            </a>
                        </p>

                        <p>
                            <a href="ProductServlet">
                                Products
                            </a>
                        </p>

                    </div>


                    <div class="col-md-2">

                        <h5>
                            Information
                        </h5>

                        <p>
                            <a href="index.jsp#delivery">
                                Delivery
                            </a>
                        </p>

                        <p>
                            <a href="#">
                                Returns
                            </a>
                        </p>

                    </div>


                    <div class="col-md-3">

                        <h5>
                            Contact
                        </h5>

                        <p>
                            📍 Rajkot, Gujarat
                        </p>

                        <p>
                            📞 +91 XXXXX XXXXX
                        </p>

                        <p>
                            ✉ support@acrylicaura.com
                        </p>

                    </div>


                </div>


                <div class="copyright">

                    © 2026 AcrylicAura.
                    All Rights Reserved.

                </div>

            </div>

        </footer>



        <!-- ================================================= -->
        <!-- JAVASCRIPT -->
        <!-- ================================================= -->

        <script>

            // SEARCH PRODUCTS

            function searchProducts() {

                let input =
                        document.getElementById("searchInput")
                        .value
                        .toLowerCase();

                let products =
                        document.querySelectorAll(".product-item");

                products.forEach(function (product) {

                    let name =
                            product.getAttribute("data-name");

                    if (name.includes(input)) {

                        product.style.display = "";

                    } else {

                        product.style.display = "none";

                    }

                });

            }


            // SEARCH WHILE TYPING

            document.getElementById("searchInput")
                    .addEventListener("keyup", function () {

                        searchProducts();

                    });


            // ADD TO CART DEMO

            function addToCart(productName) {

                alert(
                        productName +
                        " has been added to your cart!"
                        );

            }


            // HEART BUTTON

            function toggleHeart(button) {

                if (button.innerHTML === "♡") {

                    button.innerHTML = "♥";

                } else {

                    button.innerHTML = "♡";

                }

            }

        </script>


        <!-- Bootstrap JS -->

        <script src="js/bootstrap.bundle.min.js">
        </script>


    </body>

</html>
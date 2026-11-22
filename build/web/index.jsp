<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>AcrylicAura | Premium Acrylic Products</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/homepage.css">



</head>


<body>

    <!-- <%--<jsp:include page="/components/navbar.jsp" />--%> -->

    <!-- ================= NAVBAR ================= -->
    <% String customerFirstname=(String) session.getAttribute("customerFirstname"); Integer customerId=(Integer)
        session.getAttribute("customerId"); boolean loggedIn=customerId !=null; %>


        <nav class="navbar navbar-expand-lg sticky-top">

            <div class="container">


                <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">

                    AcrylicAura

                </a>


                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarMenu">

                    <span class="navbar-toggler-icon"></span>

                </button>


                <div class="collapse navbar-collapse" id="navbarMenu">


                    <ul class="navbar-nav ms-auto align-items-lg-center">


                        <!-- HOME -->

                        <li class="nav-item">

                            <a class="nav-link" href="<%=request.getContextPath()%>/index.jsp">

                                Home

                            </a>

                        </li>


                        <!-- PRODUCTS -->

                        <li class="nav-item">

                            <a class="nav-link" href="<%=request.getContextPath()%>/ProductServlet">

                                Products

                            </a>

                        </li>


                        <!-- ABOUT -->

                        <!-- <li class="nav-item">

                            <a class="nav-link"
                               href="<%=request.getContextPath()%>/index.jsp#about">

                                About

                            </a>

                        </li> -->


                        <!-- DELIVERY -->

                        <!-- <li class="nav-item">

                            <a class="nav-link"
                               href="<%=request.getContextPath()%>/index.jsp#delivery">

                                Delivery

                            </a>

                        </li> -->


                        <% if (!loggedIn) {%>


                            <!-- LOGIN -->

                            <li class="nav-item ms-lg-3">

                                <a class="nav-link shop-btn" href="<%=request.getContextPath()%>/login.jsp">

                                    Login

                                </a>

                            </li>


                            <% } else {%>


                                <!-- USER -->

                                <li class="nav-item dropdown ms-lg-3">


                                    <a class="nav-link dropdown-toggle" href="#" role="button"
                                        data-bs-toggle="dropdown">

                                        <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                            fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                                            <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0" />
                                            <path fill-rule="evenodd"
                                                d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1" />
                                        </svg>
                                        <%=customerFirstname%>

                                    </a>


                                    <ul class="dropdown-menu dropdown-menu-end">


                                        <li>

                                            <h6 class="dropdown-header">

                                                Welcome,
                                                <%=customerFirstname%>

                                            </h6>

                                        </li>


                                        <li>
                                            <hr class="dropdown-divider">
                                        </li>


                                        <li>

                                            <a class="dropdown-item align-items-center gap-3" href="#">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-person-gear" viewBox="0 0 16 16">
                                                    <path
                                                        d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0M8 7a2 2 0 1 0 0-4 2 2 0 0 0 0 4m.256 7a4.5 4.5 0 0 1-.229-1.004H3c.001-.246.154-.986.832-1.664C4.484 10.68 5.711 10 8 10q.39 0 .74.025c.226-.341.496-.65.804-.918Q8.844 9.002 8 9c-5 0-6 3-6 4s1 1 1 1zm3.63-4.54c.18-.613 1.048-.613 1.229 0l.043.148a.64.64 0 0 0 .921.382l.136-.074c.561-.306 1.175.308.87.869l-.075.136a.64.64 0 0 0 .382.92l.149.045c.612.18.612 1.048 0 1.229l-.15.043a.64.64 0 0 0-.38.921l.074.136c.305.561-.309 1.175-.87.87l-.136-.075a.64.64 0 0 0-.92.382l-.045.149c-.18.612-1.048.612-1.229 0l-.043-.15a.64.64 0 0 0-.921-.38l-.136.074c-.561.305-1.175-.309-.87-.87l.075-.136a.64.64 0 0 0-.382-.92l-.148-.045c-.613-.18-.613-1.048 0-1.229l.148-.043a.64.64 0 0 0 .382-.921l-.074-.136c-.306-.561.308-1.175.869-.87l.136.075a.64.64 0 0 0 .92-.382zM14 12.5a1.5 1.5 0 1 0-3 0 1.5 1.5 0 0 0 3 0" />
                                                </svg>
                                                My Profile

                                            </a>

                                        </li>


                                        <li>

                                            <a class="dropdown-item gap-3 align-items-center" href="#">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
                                                    fill="currentColor" class="bi bi-box-seam-fill" viewBox="0 0 16 16">
                                                    <path fill-rule="evenodd"
                                                        d="M15.528 2.973a.75.75 0 0 1 .472.696v8.662a.75.75 0 0 1-.472.696l-7.25 2.9a.75.75 0 0 1-.557 0l-7.25-2.9A.75.75 0 0 1 0 12.331V3.669a.75.75 0 0 1 .471-.696L7.443.184l.01-.003.268-.108a.75.75 0 0 1 .558 0l.269.108.01.003zM10.404 2 4.25 4.461 1.846 3.5 1 3.839v.4l6.5 2.6v7.922l.5.2.5-.2V6.84l6.5-2.6v-.4l-.846-.339L8 5.961 5.596 5l6.154-2.461z" />
                                                </svg>
                                                 My Orders

                                            </a>

                                        </li>


                                        <li>
                                            <hr class="dropdown-divider">
                                        </li>


                                        <li>

                                            <a class="dropdown-item text-danger"
                                                href="<%=request.getContextPath()%>/LogoutServlet">

                                                <svg xmlns="http://www.w3.org/2000/svg" width="25" height="25"
                                                    fill="currentColor" class="bi bi-box-arrow-left"
                                                    viewBox="0 0 16 16">
                                                    <path fill-rule="evenodd"
                                                        d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0z" />
                                                    <path fill-rule="evenodd"
                                                        d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708z" />
                                                </svg>
                                                Logout

                                            </a>

                                        </li>


                                    </ul>


                                </li>


                                <% }%>


                    </ul>


                </div>

            </div>

        </nav>


        <!-- ================= HERO CAROUSEL ================= -->

        <div id="heroCarousel" class="carousel slide" data-bs-ride="carousel">


            <!-- Indicators -->

            <div class="carousel-indicators">

                <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="0" class="active">
                </button>

                <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="1">
                </button>

                <button type="button" data-bs-target="#heroCarousel" data-bs-slide-to="2">
                </button>

            </div>


            <!-- Slides -->

            <div class="carousel-inner">


                <div class="carousel-item active">

                    <img src="https://beautifulhome.net.au/wp-content/uploads/2015/11/BH_93_GUILDFORD_RD_1538.jpg"
                        alt="Acrylic Products">

                    <div class="carousel-caption">

                        <h1>Make It Acrylic</h1>

                        <p>
                            Premium acrylic products designed
                            to make your space beautiful.
                        </p>

                        <a href="ProductServlet" class="btn btn-light px-4 py-2">

                            Explore Products

                        </a>

                    </div>

                </div>



                <div class="carousel-item">

                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDqW1spHo2XXkGTultggUJd9lVxFWiJEV6_85cmt5GJCv93hS-Ot-pZrw&s=10"
                        alt="Customized Acrylic Products">

                    <div class="carousel-caption">

                        <h1>Made Just For You</h1>

                        <p>
                            Personalized acrylic products
                            created with your ideas.
                        </p>

                        <a href="ProductServlet" class="btn btn-light px-4 py-2">

                            Shop Collection

                        </a>

                    </div>

                </div>



                <div class="carousel-item">

                    <img src="https://www.acrylicproducts.in/assets/images/industries-we-serve/bathroom.jpg"
                        alt="Acrylic Home Decor">

                    <div class="carousel-caption">

                        <h1>Beautiful. Modern. Acrylic.</h1>

                        <p>
                            Discover stylish products for
                            your home, office and gifting.
                        </p>

                        <a href="ProductServlet" class="btn btn-light px-4 py-2">

                            View Products

                        </a>

                    </div>

                </div>


            </div>


            <!-- Previous -->

            <button class="carousel-control-prev" type="button" data-bs-target="#heroCarousel" data-bs-slide="prev">

                <span class="carousel-control-prev-icon">
                </span>

            </button>


            <!-- Next -->

            <button class="carousel-control-next" type="button" data-bs-target="#heroCarousel" data-bs-slide="next">

                <span class="carousel-control-next-icon">
                </span>

            </button>


        </div>



        <!-- ================= FEATURED PRODUCTS ================= -->

        <section class="py-5">

            <div class="container">

                <div class="text-center mb-5">

                    <h2 class="section-title">
                        Featured Acrylic Products
                    </h2>

                    <p class="section-subtitle">
                        Explore our collection of premium acrylic
                        products designed for everyday use,
                        gifting and decoration.
                    </p>

                </div>


                <div class="row g-4">


                    <!-- PRODUCT 1 -->

                    <div class="col-lg-4 col-md-6">

                        <div class="product-card">

                            <img src="images/product1.jpg" alt="Acrylic Name Plate">

                            <div class="card-body">

                                <h5 class="product-title">
                                    Acrylic Name Plate
                                </h5>

                                <p class="text-muted">
                                    Stylish customized acrylic
                                    name plate for your home.
                                </p>

                                <div class="d-flex
                                     justify-content-between
                                     align-items-center">

                                    <span class="price">
                                        ?799
                                    </span>

                                    <a href="ProductServlet" class="view-btn">
                                        View
                                    </a>

                                </div>

                            </div>

                        </div>

                    </div>



                    <!-- PRODUCT 2 -->

                    <div class="col-lg-4 col-md-6">

                        <div class="product-card">

                            <img src="images/product2.jpg" alt="Acrylic Photo Frame">

                            <div class="card-body">

                                <h5 class="product-title">
                                    Acrylic Photo Frame
                                </h5>

                                <p class="text-muted">
                                    Preserve your favorite
                                    memories in acrylic.
                                </p>

                                <div class="d-flex
                                     justify-content-between
                                     align-items-center">

                                    <span class="price">
                                        $ 599
                                    </span>

                                    <a href="ProductServlet" class="view-btn">
                                        View
                                    </a>

                                </div>

                            </div>

                        </div>

                    </div>



                    <!-- PRODUCT 3 -->

                    <div class="col-lg-4 col-md-6">

                        <div class="product-card">

                            <img src="images/product3.jpg" alt="Acrylic Keychain">

                            <div class="card-body">

                                <h5 class="product-title">
                                    Personalized Keychain
                                </h5>

                                <p class="text-muted">
                                    A unique personalized acrylic
                                    keychain for everyday use.
                                </p>

                                <div class="d-flex
                                     justify-content-between
                                     align-items-center">

                                    <span class="price">
                                        $ 199
                                    </span>

                                    <a href="ProductServlet" class="view-btn">
                                        View
                                    </a>

                                </div>

                            </div>

                        </div>

                    </div>



                    <!-- PRODUCT 4 -->

                    <div class="col-lg-4 col-md-6">

                        <div class="product-card">

                            <img src="images/product4.jpg" alt="Acrylic LED Lamp">

                            <div class="card-body">

                                <h5 class="product-title">
                                    Acrylic LED Lamp
                                </h5>

                                <p class="text-muted">
                                    Modern decorative LED lamp
                                    with customized designs.
                                </p>

                                <div class="d-flex
                                     justify-content-between
                                     align-items-center">

                                    <span class="price">
                                        $ 999
                                    </span>

                                    <a href="ProductServlet" class="view-btn">
                                        View
                                    </a>

                                </div>

                            </div>

                        </div>

                    </div>



                    <!-- PRODUCT 5 -->

                    <div class="col-lg-4 col-md-6">

                        <div class="product-card">

                            <img src="images/product5.jpg" alt="Acrylic Wall Decor">

                            <div class="card-body">

                                <h5 class="product-title">
                                    Acrylic Wall Decor
                                </h5>

                                <p class="text-muted">
                                    Minimal and modern acrylic
                                    decoration for your walls.
                                </p>

                                <div class="d-flex
                                     justify-content-between
                                     align-items-center">

                                    <span class="price">
                                        $ 1,299
                                    </span>

                                    <a href="ProductServlet" class="view-btn">
                                        View
                                    </a>

                                </div>

                            </div>

                        </div>

                    </div>



                    <!-- PRODUCT 6 -->

                    <div class="col-lg-4 col-md-6">

                        <div class="product-card">

                            <img src="images/product6.jpg" alt="Acrylic Gift">

                            <div class="card-body">

                                <h5 class="product-title">
                                    Customized Acrylic Gift
                                </h5>

                                <p class="text-muted">
                                    Personalized acrylic gifts
                                    for special occasions.
                                </p>

                                <div class="d-flex
                                     justify-content-between
                                     align-items-center">

                                    <span class="price">
                                        $ 899
                                    </span>

                                    <a href="ProductServlet" class="view-btn">
                                        View
                                    </a>

                                </div>

                            </div>

                        </div>

                    </div>


                </div>


                <div class="text-center mt-5">

                    <a href="ProductServlet" class="view-btn px-4">

                        View All Products

                    </a>

                </div>

            </div>

        </section>



        <!-- ================= ABOUT ================= -->

        <section id="about" class="about-section py-5">

            <div class="container">

                <div class="text-center mb-5">

                    <h2 class="section-title">
                        Why Choose AcrylicAura?
                    </h2>

                    <p class="section-subtitle">
                        We combine quality materials, creative
                        designs and customization to create
                        products you'll love.
                    </p>

                </div>


                <div class="row g-4">


                    <div class="col-md-4">

                        <div class="feature-box">

                            <div class="feature-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor"
                                    class="bi bi-hand-thumbs-up" viewBox="0 0 16 16">
                                    <path
                                        d="M8.864.046C7.908-.193 7.02.53 6.956 1.466c-.072 1.051-.23 2.016-.428 2.59-.125.36-.479 1.013-1.04 1.639-.557.623-1.282 1.178-2.131 1.41C2.685 7.288 2 7.87 2 8.72v4.001c0 .845.682 1.464 1.448 1.545 1.07.114 1.564.415 2.068.723l.048.03c.272.165.578.348.97.484.397.136.861.217 1.466.217h3.5c.937 0 1.599-.477 1.934-1.064a1.86 1.86 0 0 0 .254-.912c0-.152-.023-.312-.077-.464.201-.263.38-.578.488-.901.11-.33.172-.762.004-1.149.069-.13.12-.269.159-.403.077-.27.113-.568.113-.857 0-.288-.036-.585-.113-.856a2 2 0 0 0-.138-.362 1.9 1.9 0 0 0 .234-1.734c-.206-.592-.682-1.1-1.2-1.272-.847-.282-1.803-.276-2.516-.211a10 10 0 0 0-.443.05 9.4 9.4 0 0 0-.062-4.509A1.38 1.38 0 0 0 9.125.111zM11.5 14.721H8c-.51 0-.863-.069-1.14-.164-.281-.097-.506-.228-.776-.393l-.04-.024c-.555-.339-1.198-.731-2.49-.868-.333-.036-.554-.29-.554-.55V8.72c0-.254.226-.543.62-.65 1.095-.3 1.977-.996 2.614-1.708.635-.71 1.064-1.475 1.238-1.978.243-.7.407-1.768.482-2.85.025-.362.36-.594.667-.518l.262.066c.16.04.258.143.288.255a8.34 8.34 0 0 1-.145 4.725.5.5 0 0 0 .595.644l.003-.001.014-.003.058-.014a9 9 0 0 1 1.036-.157c.663-.06 1.457-.054 2.11.164.175.058.45.3.57.65.107.308.087.67-.266 1.022l-.353.353.353.354c.043.043.105.141.154.315.048.167.075.37.075.581 0 .212-.027.414-.075.582-.05.174-.111.272-.154.315l-.353.353.353.354c.047.047.109.177.005.488a2.2 2.2 0 0 1-.505.805l-.353.353.353.354c.006.005.041.05.041.17a.9.9 0 0 1-.121.416c-.165.288-.503.56-1.066.56z" />
                                </svg>
                            </div>

                            <h5>
                                Premium Quality
                            </h5>

                            <p class="text-muted">
                                High-quality acrylic material
                                with clean and durable finishing.
                            </p>

                        </div>

                    </div>



                    <div class="col-md-4">

                        <div class="feature-box">

                            <div class="feature-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor"
                                    class="bi bi-pencil-square" viewBox="0 0 16 16">
                                    <path
                                        d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z" />
                                    <path fill-rule="evenodd"
                                        d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5z" />
                                </svg>
                            </div>

                            <h5>
                                Custom Designs
                            </h5>

                            <p class="text-muted">
                                Personalize your products with
                                names, photos and unique designs.
                            </p>

                        </div>

                    </div>



                    <div class="col-md-4">

                        <div class="feature-box">

                            <div class="feature-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor"
                                    class="bi bi-building-add" viewBox="0 0 16 16">
                                    <path
                                        d="M12.5 16a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7m.5-5v1h1a.5.5 0 0 1 0 1h-1v1a.5.5 0 0 1-1 0v-1h-1a.5.5 0 0 1 0-1h1v-1a.5.5 0 0 1 1 0" />
                                    <path
                                        d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v6.5a.5.5 0 0 1-1 0V1H3v14h3v-2.5a.5.5 0 0 1 .5-.5H8v4H3a1 1 0 0 1-1-1z" />
                                    <path
                                        d="M4.5 2a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm-6 3a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm3 0a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z" />
                                </svg>
                            </div>

                            <h5>
                                Made With Care
                            </h5>

                            <p class="text-muted">
                                Every product is prepared and
                                packed with attention to detail.
                            </p>

                        </div>

                    </div>


                </div>

            </div>

        </section>



        <!-- ================= DELIVERY POLICY ================= -->

        <section id="delivery" class="delivery-section py-5">

            <div class="container">

                <div class="text-center mb-5">

                    <h2 class="fw-bold">
                        Delivery Policy
                    </h2>

                    <p class="text-light">
                        Simple, safe and reliable delivery.
                    </p>

                </div>


                <div class="row g-4">


                    <div class="col-md-3">

                        <div class="delivery-card text-center">

                            <div class="feature-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor"
                                    class="bi bi-truck" viewBox="0 0 16 16">
                                    <path
                                        d="M0 3.5A1.5 1.5 0 0 1 1.5 2h9A1.5 1.5 0 0 1 12 3.5V5h1.02a1.5 1.5 0 0 1 1.17.563l1.481 1.85a1.5 1.5 0 0 1 .329.938V10.5a1.5 1.5 0 0 1-1.5 1.5H14a2 2 0 1 1-4 0H5a2 2 0 1 1-3.998-.085A1.5 1.5 0 0 1 0 10.5zm1.294 7.456A2 2 0 0 1 4.732 11h5.536a2 2 0 0 1 .732-.732V3.5a.5.5 0 0 0-.5-.5h-9a.5.5 0 0 0-.5.5v7a.5.5 0 0 0 .294.456M12 10a2 2 0 0 1 1.732 1h.768a.5.5 0 0 0 .5-.5V8.35a.5.5 0 0 0-.11-.312l-1.48-1.85A.5.5 0 0 0 13.02 6H12zm-9 1a1 1 0 1 0 0 2 1 1 0 0 0 0-2m9 0a1 1 0 1 0 0 2 1 1 0 0 0 0-2" />
                                </svg>
                            </div>

                            <h5>
                                Fast Delivery
                            </h5>

                            <p>
                                Orders are normally delivered
                                within 3?7 business days.
                            </p>

                        </div>

                    </div>



                    <div class="col-md-3">

                        <div class="delivery-card text-center">

                            <div class="feature-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor"
                                    class="bi bi-box-seam-fill" viewBox="0 0 16 16">
                                    <path fill-rule="evenodd"
                                        d="M15.528 2.973a.75.75 0 0 1 .472.696v8.662a.75.75 0 0 1-.472.696l-7.25 2.9a.75.75 0 0 1-.557 0l-7.25-2.9A.75.75 0 0 1 0 12.331V3.669a.75.75 0 0 1 .471-.696L7.443.184l.01-.003.268-.108a.75.75 0 0 1 .558 0l.269.108.01.003zM10.404 2 4.25 4.461 1.846 3.5 1 3.839v.4l6.5 2.6v7.922l.5.2.5-.2V6.84l6.5-2.6v-.4l-.846-.339L8 5.961 5.596 5l6.154-2.461z" />
                                </svg>
                            </div>

                            <h5>
                                Secure Packaging
                            </h5>

                            <p>
                                Products are carefully packed
                                to reduce damage during transit.
                            </p>

                        </div>

                    </div>



                    <div class="col-md-3">

                        <div class="delivery-card text-center">

                            <div class="feature-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor"
                                    class="bi bi-inboxes" viewBox="0 0 16 16">
                                    <path
                                        d="M4.98 1a.5.5 0 0 0-.39.188L1.54 5H6a.5.5 0 0 1 .5.5 1.5 1.5 0 0 0 3 0A.5.5 0 0 1 10 5h4.46l-3.05-3.812A.5.5 0 0 0 11.02 1zm9.954 5H10.45a2.5 2.5 0 0 1-4.9 0H1.066l.32 2.562A.5.5 0 0 0 1.884 9h12.234a.5.5 0 0 0 .496-.438zM3.809.563A1.5 1.5 0 0 1 4.981 0h6.038a1.5 1.5 0 0 1 1.172.563l3.7 4.625a.5.5 0 0 1 .105.374l-.39 3.124A1.5 1.5 0 0 1 14.117 10H1.883A1.5 1.5 0 0 1 .394 8.686l-.39-3.124a.5.5 0 0 1 .106-.374zM.125 11.17A.5.5 0 0 1 .5 11H6a.5.5 0 0 1 .5.5 1.5 1.5 0 0 0 3 0 .5.5 0 0 1 .5-.5h5.5a.5.5 0 0 1 .496.562l-.39 3.124A1.5 1.5 0 0 1 14.117 16H1.883a1.5 1.5 0 0 1-1.489-1.314l-.39-3.124a.5.5 0 0 1 .121-.393zm.941.83.32 2.562a.5.5 0 0 0 .497.438h12.234a.5.5 0 0 0 .496-.438l.32-2.562H10.45a2.5 2.5 0 0 1-4.9 0z" />
                                </svg>
                            </div>

                            <h5>
                                Order Tracking
                            </h5>

                            <p>
                                Track your order status from
                                dispatch to delivery.
                            </p>

                        </div>

                    </div>



                    <div class="col-md-3">

                        <div class="delivery-card text-center">

                            <div class="feature-icon">
                                <svg xmlns="http://www.w3.org/2000/svg" width="35" height="35" fill="currentColor"
                                    class="bi bi-person-fill-lock" viewBox="0 0 16 16">
                                    <path
                                        d="M11 5a3 3 0 1 1-6 0 3 3 0 0 1 6 0m-9 8c0 1 1 1 1 1h5v-1a2 2 0 0 1 .01-.2 4.49 4.49 0 0 1 1.534-3.693Q8.844 9.002 8 9c-5 0-6 3-6 4m7 0a1 1 0 0 1 1-1v-1a2 2 0 1 1 4 0v1a1 1 0 0 1 1 1v2a1 1 0 0 1-1 1h-4a1 1 0 0 1-1-1zm3-3a1 1 0 0 0-1 1v1h2v-1a1 1 0 0 0-1-1" />
                                </svg>
                            </div>

                            <h5>
                                Customer Support
                            </h5>

                            <p>
                                Contact our support team for
                                delivery-related assistance.
                            </p>

                        </div>

                    </div>


                </div>

            </div>

        </section>



        <!-- ================= CUSTOMIZATION ================= -->

        <section class="custom-section py-5">

            <div class="container">

                <div class="custom-box text-center">

                    <h2 class="section-title">
                        Have Your Own Design?
                    </h2>

                    <p class="text-muted mt-3">
                        We create customized acrylic products
                        according to your requirements.
                    </p>

                    <a href="ProductServlet" class="view-btn mt-3">

                        Explore Products

                    </a>

                </div>

            </div>

        </section>



        <!-- ================= FOOTER ================= -->

        <footer class="pt-5 pb-3">

            <div class="container">

                <div class="row g-4">


                    <div class="col-md-4">

                        <h5>
                            AcrylicAura
                        </h5>

                        <p>
                            Premium acrylic products designed
                            for homes, offices, gifting and
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

                        <p>
                            <a href="#about">
                                About
                            </a>
                        </p>

                    </div>



                    <div class="col-md-3">

                        <h5>
                            Customer Service
                        </h5>

                        <p>
                            <a href="#delivery">
                                Delivery Policy
                            </a>
                        </p>

                        <p>
                            <a href="#">
                                Return Policy
                            </a>
                        </p>

                        <p>
                            <a href="#">
                                Contact Us
                            </a>
                        </p>

                    </div>



                    <div class="col-md-3">

                        <h5>
                            Contact
                        </h5>

                        <p>
                            Rajkot, Gujarat
                        </p>

                        <p>
                            +91 00000 00000
                        </p>

                        <p>
                            support@acrylicaura.com
                        </p>

                    </div>


                </div>


                <div class="copyright text-center mt-4">

                    <p class="mb-0">
                        2026 AcrylicAura. All Rights Reserved.
                    </p>

                </div>

            </div>

        </footer>



        <!-- Bootstrap JS -->

        <script src="js/bootstrap.bundle.min.js">
        </script>


</body>

</html>
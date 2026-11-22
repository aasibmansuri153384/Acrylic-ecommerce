<%
    String customerName =
            (String) session.getAttribute("customerName");

    Integer customerId =
            (Integer) session.getAttribute("customerId");

    boolean loggedIn =
            customerId != null;
%>


<nav class="navbar navbar-expand-lg sticky-top">

    <div class="container">


        <a class="navbar-brand"
           href="<%=request.getContextPath()%>/index.jsp">

            AcrylicAura

        </a>


        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarMenu">

            <span class="navbar-toggler-icon"></span>

        </button>


        <div class="collapse navbar-collapse"
             id="navbarMenu">


            <ul class="navbar-nav ms-auto align-items-lg-center">


                <!-- HOME -->

                <li class="nav-item">

                    <a class="nav-link"
                       href="<%=request.getContextPath()%>/index.jsp">

                        Home

                    </a>

                </li>


                <!-- PRODUCTS -->

                <li class="nav-item">

                    <a class="nav-link"
                       href="<%=request.getContextPath()%>/ProductServlet">

                        Products

                    </a>

                </li>


                <!-- ABOUT -->

                <li class="nav-item">

                    <a class="nav-link"
                       href="<%=request.getContextPath()%>/index.jsp#about">

                        About

                    </a>

                </li>


                <!-- DELIVERY -->

                <li class="nav-item">

                    <a class="nav-link"
                       href="<%=request.getContextPath()%>/index.jsp#delivery">

                        Delivery

                    </a>

                </li>


                <% if (!loggedIn) { %>


                    <!-- LOGIN -->

                    <li class="nav-item ms-lg-3">

                        <a class="nav-link shop-btn"
                           href="<%=request.getContextPath()%>/login.jsp">

                            Login

                        </a>

                    </li>


                <% } else { %>


                    <!-- USER -->

                    <li class="nav-item dropdown ms-lg-3">


                        <a class="nav-link dropdown-toggle"
                           href="#"
                           role="button"
                           data-bs-toggle="dropdown">

                            ? <%=customerName%>

                        </a>


                        <ul class="dropdown-menu dropdown-menu-end">


                            <li>

                                <h6 class="dropdown-header">

                                    Welcome,
                                    <%=customerName%>

                                </h6>

                            </li>


                            <li>
                                <hr class="dropdown-divider">
                            </li>


                            <li>

                                <a class="dropdown-item"
                                   href="#">

                                    ? My Profile

                                </a>

                            </li>


                            <li>

                                <a class="dropdown-item"
                                   href="#">

                                    ? My Orders

                                </a>

                            </li>


                            <li>
                                <hr class="dropdown-divider">
                            </li>


                            <li>

                                <a class="dropdown-item text-danger"
                                   href="<%=request.getContextPath()%>/LogoutServlet">

                                    ? Logout

                                </a>

                            </li>


                        </ul>


                    </li>


                <% } %>


            </ul>


        </div>

    </div>

</nav>
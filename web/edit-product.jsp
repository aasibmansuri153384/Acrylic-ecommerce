<%@page import="com.acrylicshop.model.Product"%>

<%
    Product product =
            (Product) request.getAttribute("product");
%>

<!DOCTYPE html>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB"
                crossorigin="anonymous">
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
                crossorigin="anonymous"></script>
                <link rel="stylesheet" href="css/edit-products.css">

    <title>Edit Product</title>

    

</head>

<body>

<h1 style="text-align:center;">
    Edit Acrylic Product
</h1>

<a href="/AcrylicEcommerce" class="btn btn-close"></a>

<form action="ProductServlet"
      method="post" class="update-form">

    <input type="hidden"
           name="action"
           value="update" class="input-textarea">

    <input type="hidden"
           name="productId"
           value="<%=product.getProductId()%>" class="input-textarea">


    <label>Product Name</label>

    <input type="text"
           name="productName"
           value="<%=product.getProductName()%>"
           required class="input-textarea">


    <label>Description</label>

    <textarea name="description"
              required class="input-textarea"><%=product.getDescription()%></textarea>


    <label>Price</label>

    <input type="number"
           name="price"
           step="0.01"
           value="<%=product.getPrice()%>"
           required class="input-textarea">


    <label>Stock</label>

    <input type="number"
           name="stock"
           value="<%=product.getStock()%>"
           required  class="input-textarea">


    <label>Category ID</label>

    <input type="number"
           name="categoryId"
           value="<%=product.getCategoryId()%>"
           required class="input-textarea">


    <label>Image URL</label>

    <input type="text"
           name="imageUrl"
           value="<%=product.getImageUrl()%>" class="input-textarea">


    <button type="submit" class="update-btn w-100">
        Update Product
    </button>

</form>

</body>

</html>
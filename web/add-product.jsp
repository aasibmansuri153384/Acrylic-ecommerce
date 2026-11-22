<!DOCTYPE html>
<html>

<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI"
        crossorigin="anonymous"></script>

    <title>Add Acrylic Product</title>

    <style>
        body {
            font-family: Arial;
            background: #f5f5f5;
            margin: 40px;
        }

        form {
            background: white;
            padding: 25px;
            max-width: 500px;
            margin: auto;
            border-radius: 10px;
        }

        input,
        textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0 15px;
            box-sizing: border-box;
        }

        button {
            background: black;
            color: white;
            padding: 12px 25px;
            border: none;
            cursor: pointer;
        }
    </style>

</head>

<body>

    <h1 style="text-align:center;">
        Add Acrylic Product
    </h1>
    <a href="/">Home</a>
    <form action="ProductServlet" method="post">

        <input type="hidden" name="action" value="add">

        <label>Product Name</label>

        <input type="text" name="productName" required>


        <label>Description</label>

        <textarea name="description" required></textarea>


        <label>Price</label>

        <input type="number" name="price" step="0.01" required>


        <label>Stock</label>

        <input type="number" name="stock" required>


        <label>Category ID</label>

        <input type="number" name="categoryId" required>


        <label>Image URL</label>

        <input type="text" name="imageUrl">


        <button type="submit">
            Add Product
        </button>

    </form>

</body>

</html>
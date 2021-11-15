<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 14/11/2021
  Time: 9:32 SA
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">
    <h2>Add Product</h2>
    <form action="addproduct" method = "post">
        <div class="form-group">
            <label for="name">Product name: </label>
            <input type="text" class="form-control" id="name" placeholder="Enter name : " name="product_name">
        </div>


        <div class="form-group">
            <label for="price">Product price: </label>
            <input type="text" class="form-control" id="price" placeholder="Enter price" name="product_price">
        </div>


        <div class="form-group">
            <label for="image">Product image: </label>
            <input type="text" class="form-control" id="image" placeholder="Enter image" name="product_image">
        </div>






        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>
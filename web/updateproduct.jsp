<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 14/11/2021
  Time: 9:32 SA
  To change this template use File | Settings | File Templates.
--%>
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
    <h2>Stacked form</h2>
    <form action="updateproduct" method = "post">
        <div class="form-group">
            <label for="id">ID :</label>
            <input type="text" class="form-control" id="id" value="${ps.product_id}" name="product_id" readonly>
        </div>
        <div class="form-group">
            <label for="name">Product Name :</label>
            <input type="text" class="form-control" id="name" value="${ps.product_name}" name="product_name">
        </div>

        <div class="form-group">
            <label for="price">Product Price :</label>
            <input type="text" class="form-control" id="price" value="${ps.product_price}" name="product_price">
        </div>

        <div class="form-group">
            <label for="image">Product Image :</label>
            <input type="text" class="form-control" id="image" value="${ps.product_image}" name="product_image">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>

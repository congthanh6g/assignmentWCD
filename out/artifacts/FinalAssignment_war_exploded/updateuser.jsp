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
    <form action="updateuser" method = "post">
        <div class="form-group">
            <label for="id">ID :</label>
            <input type="text" class="form-control" id="id" value="${us.user_id}" name="user_id" readonly>
        </div>
        <div class="form-group">
            <label for="name">Username :</label>
            <input type="text" class="form-control" id="name" value="${us.user_username}" name="user_username">
        </div>
        <div class="form-group">
            <label for="pwd">Password:</label>
            <input type="password" class="form-control" id="pwd" value="${us.user_password}" name="user_password">
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" class="form-control" id="email" value="${us.user_email}" name="user_email">
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>

</body>
</html>

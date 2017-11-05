<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
    <title>Prog.kiev.ua</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div align="center" class="container">
    <br>
    <h1>Register page</h1>
    <br>
    <c:url value="/newuser" var="regUrl" />
    <form action="${regUrl}" method="POST">
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="login">First name</label>
                <input type="text" class="form-control" id="login" placeholder="Enter login" name="login" value="${login}">
            </div>
            <div class="col-md-6 mb-3">
                <label for="password">Last name</label>
                <input type="password" class="form-control" id="password" placeholder="Enter password" name="password">
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-3">
                <label for="email">Email</label>
                <input type="text" class="form-control" id="email" placeholder="Enter email" name="email" >
            </div>
            <div class="col-md-6 mb-3">
                <label for="phone">Telephone</label>
                <input type="text" class="form-control" id="phone" placeholder="Enter telephone" name="phone">
            </div>
        </div>
        <br>
        <div>
        <button class="btn btn-default" type="submit">Submit form</button>
        </div>
        <c:if test="${exists ne null}">
            <h1 class="text-warning">User already exists!</h1>
        </c:if>
    </form>
</div>
</body>
</html>

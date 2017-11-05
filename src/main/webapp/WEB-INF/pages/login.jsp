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
    <h1>Login page</h1>
    <br>
<c:url value="/j_spring_security_check" var="loginUrl" />
<form action="${loginUrl}" method="POST">
    <div class="form-group row">
        <label for="login" class="col-sm-2 col-form-label">Login</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" id="login" placeholder="Enter login" name="j_login">
        </div>
    </div>
    <div class="form-group row">
        <label for="password" class="col-sm-2 col-form-label">Password</label>
        <div class="col-sm-10">
            <input type="password" class="form-control" id="password" placeholder="Enter password" name="j_password">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-sm-10" align="center">
            <button type="submit" class="btn btn-default">Login</button>
            <button type="button" id="newUser" class="btn btn-default">Register</button>
        </div>
    </div>
    <div>
        <c:if test="${param.error ne null}">
            <h1 class="text-warning">Wrong login or password!</h1>
        </c:if>
        <c:if test="${param.logout ne null}">
            <h1 class="text-success">Chao!</h1>
        </c:if>
    </div>
</form>
    </div>
<script>
    $('#newUser').click(function(){
        window.location.href='/register';
    });
</script>
</body>
</html>

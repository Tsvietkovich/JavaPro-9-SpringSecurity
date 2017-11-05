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
<div class="container" align="center">

    <div class="well well-lg">
        <h1>Your login is: ${login}, your roles are:</h1>
        <c:forEach var="s" items="${roles}">
            <h3><c:out value="${s}" /></h3>
            <c:if test="${s=='ROLE_ADMIN'}">
                <p>Click the link to <a href="/admin_info">enter admin page</a></p>
            </c:if>
        </c:forEach>
    </div>
    <c:url value="/update" var="updateUrl" />
    <form action="${updateUrl}" method="POST">
        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" id="email"  name="email" value="${email}">
            </div>
        </div>
        <div class="form-group row">
            <label for="phone" class="col-sm-2 col-form-label">Phone</label>
            <div class="col-sm-10">
                <input type="password" class="form-control" id="phone" name="phone" value="${phone}" >
            </div>
        </div>
        <div class="form-group row">
            <div class="col-sm-10" align="left">
                <button type="submit" class="btn btn-default">Update</button>
            </div>
        </div>
        <br>
    </form>
        <div class="well well-sm">
            <c:url value="/logout" var="logoutUrl" />
            <p>Click the link to <a href="${logoutUrl}">logout</a></p>
        </div>
</div>
</body>
</html>

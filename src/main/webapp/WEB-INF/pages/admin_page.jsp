<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 04.11.2017
  Time: 14:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>kiev.prog.ua</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
</head>
<body>
<div align="center">
    <h1>The list of all users</h1>
    <table class="table table-striped">
        <thead>
        <tr>
            <td><b>Delete</b></td>
            <td><b>Login</b></td>
            <td><b>Password</b></td>
            <td><b>Role</b></td>
            <td><b>E-mail</b></td>
            <td><b>Phone</b></td>
            <td><b>Edit password</b></td>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${list}" var="customUser">
            <tr>
                <td><input type="checkbox" name="toDelete[]" value="${customUser.id}" id="checkbox_${customUser.id}"/></td>
                <td>${customUser.login}</td>
                <td>${customUser.password}</td>
                <td>${customUser.role}</td>
                <td>${customUser.email}</td>
                <td>${customUser.phone}</td>
                <td><a href="/edit_password/${customUser.id}">Edit password</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <br>
    <button type="button"  class="btn btn-default" id="delete_customUser">Delete Contact</button>
</div>
<div class="well" align="center">
    <c:url value="/logout" var="logoutUrl" />
    <h3>Click the link to <a href="${logoutUrl}"> logout</a></h3>
</div>
<script>
    $('#delete_customUser').click(function(){
        var data = { 'toDelete[]' : []};
        $(":checked").each(function() {
            data['toDelete[]'].push($(this).val());
        });
        $.post("/customUser/delete", data, function(data, status) {
            window.location.reload();
        });
    });
</script>
</body>
</html>

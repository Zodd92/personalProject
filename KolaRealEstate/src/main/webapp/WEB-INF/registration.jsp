<%--
  Created by IntelliJ IDEA.
  User: kola
  Date: 20.7.23
  Time: 5:23 e pasdites
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>
<form:form action="/register" method="post" modelAttribute="newUser">
    <div class="row d-flex justify-content-center">
        <h2>Register: </h2>
    </div>

    <div class="row border border-info p-1">
        <div class="col border-end border-info">
            <form:label path="userName">Username: </form:label>
            <form:errors path="userName"></form:errors>
        </div>
        <div class="col w-100">
            <form:input path="userName"></form:input>
        </div>
    </div>

    <div class="row border border-info p-1">
        <div class="col border-end border-info">
            <form:label path="email">Email: </form:label>
            <form:errors path="email"></form:errors>
        </div>
        <div class="col w-100">
            <form:input path="email"></form:input>
        </div>
    </div>

    <div class="row border border-info p-1">
        <div class="col border-end border-info">
            <form:label path="password">Password: </form:label>
            <form:errors path="password"></form:errors>
        </div>
        <div class="col w-100">
            <form:input type="password" path="password"></form:input>
        </div>
    </div>

    <div class="row border border-info p-1">
        <div class="col border-end border-info">
            <form:label path="confirm">Confirm Password: </form:label>
            <form:errors path="confirm"></form:errors>
        </div>
        <div class="col w-100">
            <form:input type="password" path="confirm"></form:input>
        </div>
    </div>

    <div class="row border border-info p-1">
        <input type="submit" value="Sumbit">
    </div>
</form:form>
</body>
</html>

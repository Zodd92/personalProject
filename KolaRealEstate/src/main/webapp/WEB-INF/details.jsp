<%--
  Created by IntelliJ IDEA.
  User: kola
  Date: 20.7.23
  Time: 5:11 e pasdites
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Detatils</title>
</head>
<body>
<h3>Agent:</h3>
<div>
    <img src="" alt="">
    <p>"${realEstate.price}"</p>
    <p>"${realEstate.room}"</p>
    <p>"${realEstate.toilet}"</p>
    <p>"${realEstate.floor}"</p>
    <p>"${realEstate.location}"</p>
</div>
<button><a href="/addNew">Add</a></button>
<button><a href="edit">Edit</a></button>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: kola
  Date: 20.7.23
  Time: 2:16 e pasdites
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<html>
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Pronat</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body style="background-color: bisque;" >
<nav style="background-color:rgb(191 131 131);">
 <ul>
    <li>
      <form class="d-flex nav-item modal-dialog">
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </li>
  </ul>
</nav>
<h2 class="mx-auto" style="width: 200px; margin-top: 50px;">Pronat</h2>
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="..." class="d-block w-100" alt="slide1">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="slide2">
    </div>
    <div class="carousel-item">
      <img src="..." class="d-block w-100" alt="slide3">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
<form:form>
  <c:forEach var="realEstate" items="realEstates">
  <div>
    <img src="/Fizzbuzz/images.png" alt="photo">
    <p>kjo prone ka  "${realEstate.room}" dhe "${realEstate.toilet}" ne katin "${realEstate.floor}", gjendet ne "${realEstate.location}"</p>
    <p>"${realEstate.id.price}"€</p>
  </div>
  </c:forEach>
</form:form>
<%--@elvariable id="newUser" type="jakarta"--%>
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
<footer class="blockquote-footer" style="display: flex; text-align: end; text-align: center;"><a href="https://www.cookiebot.com/en/uk-ie-gdpr-cookies/?utm_source=google&utm_medium=cpc&utm_campaign=cent-east-europe-generic&utm_device=c&utm_term=gdpr%20law&utm_content=cent-eu-eng-gdpr-compliance&matchtype=e&GeoLoc=9069992&placement=&campaign_id=1334729411&adset_id=78587726544&ad_id=591330908326&gclid=Cj0KCQjwk96lBhDHARIsAEKO4xYjobudO5Hr789n5xT-zrm92K-3lHvlKkszHz2E38cEHdl-SNEkYVYaAhHzEALw_wcB">GDPR</a> </footer>

</body>
</html>

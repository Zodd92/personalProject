<%--
  Created by IntelliJ IDEA.
  User: kola
  Date: 19.7.23
  Time: 2:24 e pasdites
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
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body style="background-color: bisque;" >
<nav style="background-color:rgb(191 131 131);" >
    <div class="container-fluid">
        <ul class="nav nav-pills nav-fill " >
            <li class="nav-item modal-dialog modal-body" >
                <img src="/images/kola.jpg" alt="kola">
            </li>
            <li class="nav-item modal-dialog-centered">
                <a class="nav-link link-success text-decoration-none " href="/contact">Kola&Co</a>
            </li>
            <li class="nav-item modal-dialog-centered">
                <a class="nav-link  link-success text-decoration-none" href="/prona">Pronat</a>
            </li>
            <li class="nav-item modal-dialog-centered">
                <a class="nav-link  link-success text-decoration-none" href="/contact">Contacts</a>
            </li>
            <li class="nav-item modal-dialog-centered">
                <form:form class="d-flex nav-item">
                    <input class="form-control me-2" type="search" placeholder="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form:form>
            </li>
        </ul>
    </div>
</nav>
<h2 class="mx-auto link-success" style="width: 200px; margin-top: 50px; ">Pronat</h2>
<div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="${realEstate.image}" class="d-block w-100" alt="slide1">
        </div>
        <div class="carousel-item">
            <img src="${realEstate.image}" class="d-block w-100" alt="slide2">
        </div>
        <div class="carousel-item">
            <img src="${realEstate.image}" class="d-block w-100" alt="slide3">
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
<div style="margin-top: 20px">
    <footer class="blockquote-footer " style="text-align: end; text-align: center"><a class="text-decoration-none link-success" href="https://commission.europa.eu/law/law-topic/data-protection_en">GDPR</a></footer>
</div>
</body>
</html>

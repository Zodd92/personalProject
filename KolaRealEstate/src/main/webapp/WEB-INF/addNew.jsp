
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
    <title>Add New Property</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<h3>Agent:</h3>
<form:form>
        <img src="" alt="">
        <div>
            <form:label path="room">Number of room: </form:label>
            <form:errors path="room"></form:errors>
            <form:input type="room" path="room"></form:input>
        </div>
        <div>
            <form:label path="toilet">Number of toilet: </form:label>
            <form:errors path="toilet"></form:errors>
            <form:input type="toilet" path="toilet"></form:input>
        </div>
        <div>
            <form:label path="floor">Number of floor: </form:label>
            <form:errors path="floor"></form:errors>
            <form:input type="floor" path="floor"></form:input>
        </div>
        <div>
            <form:label path="location">Number of room: </form:label>
            <form:errors path="location"></form:errors>
            <form:input type="location" path="location"></form:input>
        </div>
        <form:form><input type="submit">Add</form:form>
    
</form:form>
<button><a href="/addNew">Add</a></button>
<button><a href="edit">Edit</a></button>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
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
<button><a href="/delete">delete</a></button>
<button><a href="update">Update</a></button>
</body>
</html>
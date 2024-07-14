<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Add Student</title>
</head>
<body>

<div>
    <h1>Add Student</h1>
	<form action="<c:url value='/students/save' />" method="post">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name"><br>
        <label for="address">Address:</label>
        <input type="text" id="address" name="address"><br>
        <input type="submit" value="Save">
    </form>
    </div>
    
    <div>
    <h1>Get All Student</h1>
	<form action="<c:url value='/students/List' />" method="get">
        <label for="name">Name:</label>
        <input type="submit" value="GetList">
    </form>
    
    </div>
</body>
</html>

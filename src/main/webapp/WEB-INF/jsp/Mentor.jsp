<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css"/>"/>
    <!-- Latest compiled and minified JavaScript -->
    <title>Mentor Page</title>
</head>
<body>

<h1> Mentor Page</h1>


<div class="form-group col-md-6">
    <p>These Users are available as Mentors:</p>
    <table class="table" border="1px gray">
        <thead>
        <tr style="font-weight: 600;">
            <td>Avatar</td>
            <td>Name</td>
            <td>Country</td>
            <td>User Since</td>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><img src="${avatar}"></td>
            <td>${name}</td>
            <td>${country}</td>
            <td>${userSince}</td>
        </tr>
        </tbody>
    </table>
</div>



</body>

</html>
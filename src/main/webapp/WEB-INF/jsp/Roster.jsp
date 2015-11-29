<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang ="en">

<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
          integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
          crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-1.10.2.js"></script>

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"
          integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX"
          crossorigin="anonymous">

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"
            integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ=="
            crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/custom.css"/>"/>
    <title>Register as a User</title>
</head>

<body>

<div class="navbar navbar-gakktu">
    <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-responsive-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
    </div>
    <div class="navbar-collapse collapse navbar-responsive-collapse">
        <form class="navbar-form navbar-left">
            <c:choose>
                <%--If the model has an attribute with the name `user`--%>
                <c:when test="${not empty sessionUser}">
                    <span class="label label-default" style="font-size: large; color: black">Hello, ${sessionUser} </span>
                </c:when>
                <c:otherwise>
                    <ul class="nav navbar-nav navbar-left ">
                        <li><a href="/login">Log In</a></li>
                    </ul>
                </c:otherwise>
            </c:choose>
        </form>
        <ul class="nav navbar-nav navbar-right ">
            <li><a href="/">Home</a></li>
            <li><a href="/user">Sign Up</a></li>
            <li><a href="/article">Articles</a></li>
            <li><a href="/mentor">Mentor Program</a></li>
            <li><a href="/forum">Forum</a></li>

        </ul>
    </div>
</div>

<c:choose>
    <c:when test="${regStatus==true}">
        <div class="alert alert-dismissable alert-success">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Well done!</strong> User registration complete <a href="javascript:void(0)" class="alert-link">Welcome!</a>
        </div>
    </c:when>
    <c:when test="${regStatus==false}">
        <div class="alert alert-dismissable alert-danger">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Oops!</strong> <a href="javascript:void(0)" class="alert-link">User name not available.</a> Please try again.
        </div>
    </c:when>

</c:choose>

<%--Choose what code to generate based on tests that we implement--%>
<c:choose>
    <%--If the model has an attribute with the name `user`--%>
    <c:when test="${not empty user}">
        <%--Create a table for the Postit Notes--%>
        <div class="col-md-8">
            <table class="table table-striped table-hover">
                <thead colspan="2">Registered Users:</thead>
                <tr>
                    <td><b>UserName</b></td>
                    <td><b>Password</b></td>
                    <td><b>Home Country</b></td>
                    <td><b>Mother Tongue</b></td>
                    <td><b>Gender</b></td>
                    <td><b>Marital Status</b></td>
                </tr>

                    <%--For each user, that is in the list that was passed in the model--%>
                    <%--generate a row in the table--%>
                    <%--Here we set `postit` as a singular item out of the list `postitNotes`--%>
                <c:forEach var="user" items="${users}">
                    <tr class="info">
                            <%--We can reference attributes of the Entity by just entering the name we gave--%>
                            <%--it in the singular item var, and then just a dot followed by the attribute name--%>

                            <%--Create a link based on the name attribute value--%>
                        <td><a href="/user/${user.name}">${user.name}</a></td>
                            <%--The String in the note attribute--%>
                        <td>${user.password}</td>
                        <td>${user.homeCountry}</td>
                        <td>${user.languagePref}</td>
                        <td>${user.gender}</td>
                        <td>${user.marital}</td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </c:when>

    <%--If all tests are false, then do this--%>
    <c:otherwise>
        <h3>No Users!</h3>
    </c:otherwise>
</c:choose>

</body>
</html>
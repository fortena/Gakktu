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
            <li><a href="/roster" style="color: yellow">Admin Only</a></li>
            <c:choose>
                <c:when test="${not empty sessionUser}">
                    <li><a href="/profile">${sessionUser}'s Profile</a></li>
                    <li><a href="/logout">Log Out</a></li>
                </c:when>
            </c:choose>

        </ul>
    </div>
</div>

<div class="panel panel-info col-md-6">
    <div class="panel-heading">
        <h3 class="panel-title">${userForProfile.name}'s Profile</h3>
        <div class="panel-body">
            <table class="table table-striped table-hover">
                <tr class="info">
                    <td><b>Home Country</b></td>
                    <td>${userForProfile.homeCountry}</td>
                </tr>
                <tr class="info">
                    <td><b>Language</b></td>
                    <td>${userForProfile.languagePref}</td>
                </tr>
                <tr class="info">
                    <td><b>Gender</b></td>
                    <td>${userForProfile.gender}</td>
                </tr>
                <tr class="info">
                    <td><b>Marital Status</b></td>
                    <td>${userForProfile.marital}</td>
                </tr>

                <tr class="info">
                    <td><b>Arrived in Iceland</b></td>
                    <td>${userForProfile.arrivalYear}</td>
                </tr>
                <tr class="info">
                    <td><b>Mentor?</b></td>
                    <td>${userForProfile.mentor}</td>
                </tr>
                <tr class="info">
                    <td><b>Number of Dependents</b></td>
                    <td>${userForProfile.dependents}</td>
                </tr>
                <tr class="info">
                    <td><b>Employment Status</b></td>
                    <td>${userForProfile.employStatus}</td>
                </tr>
            </table>
        </div>
    </div>
</div>

</body>
</html>
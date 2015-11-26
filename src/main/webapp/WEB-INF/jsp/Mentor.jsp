<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html lang="en">

<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/custom.css"/>"/>
    <!-- Latest compiled and minified JavaScript -->
    <title>Mentor Page</title>
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
                <input type="text" class="form-control col-lg-8" placeholder="Search">
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
            <tr>
                <td><img src="${avatar2}"></td>
                <td>${name2}</td>
                <td>${country2}</td>
                <td>${userSince2}</td>
            </tr>
            </tbody>
        </table>
    </div>
</body>
</html>
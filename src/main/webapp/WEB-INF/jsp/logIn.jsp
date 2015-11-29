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
        <c:choose>
            <%--If the model has an attribute with the name `user`--%>
            <c:when test="${not empty sessionUser}">
                <span class="label label-default">Logged In As ${sessionUser} </span>
            </c:when>
            <c:otherwise>
                <ul class="nav navbar-nav navbar-left ">
                    <li><a href="/login">Log In</a></li>
                </ul>
            </c:otherwise>
        </c:choose>

        <ul class="nav navbar-nav navbar-right ">
            <li><a href="/">Home</a></li>
            <li><a href="/user">Sign Up</a></li>
            <li><a href="/article">Articles</a></li>
            <li><a href="/mentor">Mentor Program</a></li>
            <li><a href="/forum">Forum</a></li>

        </ul>
    </div>
</div>

<sf:form method="POST" class="col-lg-12" commandName="login" action="/login">
    <fieldset>
        <legend>Log In Here</legend>
        <div class="container user_Form">
            <div class="form-group col-lg-12">
                <label class="control-label col-sm-2">Name</label>
                <div class="col-md-4">
                    <sf:input type="text" path= "nameAttempt" placeholder="Your name here" class="form-control col-md-4 floating-label"/>
                </div>
            </div>
            <br>
            <div class="form-group col-lg-12">
                <label class="control-label col-sm-2">Password</label>
                <div class="col-md-4">
                    <sf:input type="password" path="passwordAttempt" placeholder="Your Password" class="form-control col-md-4 floating-label"/>
                </div>
            </div>
        </div>
        <div style="padding-top:10px; padding-bottom:10px" class="col-lg-10 col-lg-offset-1">
            <sf:button type="submit" class="btn btn-primary" VALUE="New User!">Submit</sf:button>
        </div>

    </fieldset>
</sf:form>

<c:choose>
    <c:when test="${userDoesNotExist==true}">
        <div class="alert alert-dismissable alert-danger">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Oops! </strong>UserName not found. <a href="javascript:void(0)" class="alert-link">Please try again or register as a new User</a>
        </div>
    </c:when>
    <c:when test="${passwordIsWrong==true}">
        <div class="alert alert-dismissable alert-danger">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Oops! </strong> <a href="javascript:void(0)" class="alert-link">Wrong password. </a> Please try again.
        </div>
    </c:when>

</c:choose>


</body>
</html>
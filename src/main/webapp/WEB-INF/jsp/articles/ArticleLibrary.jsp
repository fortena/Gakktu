<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang ="en">

<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-theme.min.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-multiselect.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/custom.css"/>"/>

    <script type="text/javascript" src="<c:url value="js/jquery-2.1.4.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="js/bootstrap.min.js"/>"></script>
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



<%--Choose what code to generate based on tests that we implement--%>
<c:choose>
    <%--If the model has an attribute with the name `user`--%>
    <c:when test="${not empty article}">
        <%--Create a table for the Postit Notes--%>
        <div class="col-md-8">
            <table class="table table-striped table-hover">
                <thead colspan="2">Articles</thead>
                <tr>
                    <td><b>Title</b></td>
                    <td><b>Password</b></td>
                    <td><b>Home Country</b></td>
                    <td><b>Mother Tongue</b></td>
                    <td><b>Gender</b></td>
                    <td><b>Marital Status</b></td>
                </tr>

                    <%--For each user, that is in the list that was passed in the model--%>
                    <%--generate a row in the table--%>
                    <%--Here we set `postit` as a singular item out of the list `postitNotes`--%>
                <c:forEach var="article" items="${articles}">
                    <tr class="info">
                            <%--We can reference attributes of the Entity by just entering the name we gave--%>
                            <%--it in the singular item var, and then just a dot followed by the attribute name--%>

                            <%--Create a link based on the name attribute value--%>
                        <td><a href="/user/${article.name}">${article.name}</a></td>
                            <%--The String in the note attribute--%>
                        <td>${article.categories}</td>
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
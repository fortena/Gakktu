<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang ="en">

<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-theme.min.css"/>"/>
    <link rel="stylesheet" type="text/css" href="<c:url value="/css/custom.css"/>"/>

    <script type="text/javascript" src="<c:url value="js/jquery-2.1.4.min.js"/>"></script>
    <script type="text/javascript" src="<c:url value="js/bootstrap.min.js"/>"></script>
    <title>Articles</title>
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

    <div class="panel panel-danger">
        <div class="panel-heading">
            <h3 class="panel-title">A Snapshot View of Our Database</h3>
            <h3 class="panel-title">(For demonstration purposes only.)</h3>
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
                        <td><b>Category</b></td>
                    </tr>

                        <%--For each user, that is in the list that was passed in the model--%>
                        <%--generate a row in the table--%>
                        <%--Here we set `postit` as a singular item out of the list `postitNotes`--%>
                    <c:forEach var="article" items="${article}">
                        <tr class="info">
                                <%--We can reference attributes of the Entity by just entering the name we gave--%>
                                <%--it in the singular item var, and then just a dot followed by the attribute name--%>

                                <%--Create a link based on the name attribute value--%>
                            <td><a href="/article/${article.title}">${article.title}</a></td>
                                <%--The String in the note attribute--%>
                            <td>${article.categories}</td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </c:when>

        <%--If all tests are false, then do this--%>
        <c:otherwise>
            <h3>Library is empty!</h3>
        </c:otherwise>
    </c:choose>

    </body>
</html>
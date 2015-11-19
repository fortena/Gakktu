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
    <title>Register as a User</title>
</head>

<body>

<sf:form method="POST" class="col-lg-12" commandName="user" action="/user">
    <fieldset>
        <legend>Register as a new User</legend>
        <div class="form-group">
            <label class="control-label col-sm-1">Name</label>
            <div class="col-lg-4">
                <sf:input type="text" size="20" path="name" placeholder="Your name here" class="form-control col-md-4 floating-label"/>
            </div>
        </div>
        <br>
        <div class="form-group">
            <label class="control-label col-sm-1">Password</label>
            <div class="col-md-4">
                <sf:input type="password" path="password" placeholder="Your Password" class="form-control col-md-4 floating-label"/>
            </div>
        </div>
        <div style="padding-top:10px; padding-bottom:10px" class="col-lg-10 col-lg-offset-1">
            <sf:button type="submit" class="btn btn-primary" VALUE="New User!">Submit</sf:button>
        </div>
    </fieldset>
</sf:form>

<c:choose>
    <c:when test="${regStatus==true}">
        <div class="alert alert-dismissable alert-success">
            <button type="button" class="close" data-dismiss="alert">×</button>
            <strong>Well done!</strong> User registration complete <a href="javascript:void(0)" class="alert-link">Welcome!</a>.
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
        <table class="users">

                <%--For each postit note, that is in the list that was passed in the model--%>
                <%--generate a row in the table--%>
                <%--Here we set `postit` as a singular item out of the list `postitNotes`--%>
            <c:forEach var="user" items="${users}">
                <tr>
                        <%--We can reference attributes of the Entity by just entering the name we gave--%>
                        <%--it in the singular item var, and then just a dot followed by the attribute name--%>

                        <%--Create a link based on the name attribute value--%>
                    <td><a href="/user/${user.name}">${user.name}</a></td>
                        <%--The String in the note attribute--%>
                    <td>${user.password}</td>
                </tr>
            </c:forEach>
        </table>
    </c:when>

    <%--If all tests are false, then do this--%>
    <c:otherwise>
        <h3>No Users!</h3>
    </c:otherwise>
</c:choose>

</body>
</html>
<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

    <head>
        <title>Postit Notes</title>

    </head>
    <body>

    <h1>Categories</h1>

    <%--Note that the `commandName` given here HAS TO MATCH the name of the attribute--%>
    <%--that is added to the model that is passed to the view.--%>
    <%--See PostitNoteController, method categoryViewGet(), and find where this attribute is added to the model.--%>
    <sf:form method="POST" commandName="category" action="/categories">

        <table>
            <tr>
                <td> Name:</td>
                <%--the `path` attribute matches the `name` attribute of the Entity that was passed in the model--%>
                <td><sf:input path="name" type="text" placeholder="Enter name"/></td>
            </tr>
        </table>

        <input type="submit" VALUE="Post It!"/>

    </sf:form>

    <%--Choose what code to generate based on tests that we implement--%>
    <c:choose>
        <%--If the model has an attribute with the name `categories`--%>
        <c:when test="${not empty categories}">
            <%--Create a table for the Postit Notes--%>
            <table class="notes">

                <%--For each category note, that is in the list that was passed in the model--%>
                <%--generate a row in the table--%>
                <%--Here we set `category` as a singular item out of the list `categories`--%>
                <c:forEach var="category" items="${categories}">
                    <tr>
                        <%--We can reference attributes of the Entity by just entering the name we gave--%>
                        <%--it in the singular item var, and then just a dot followed by the attribute name--%>

                        <%--Create a link based on the name attribute value--%>
                        <td><a href="/category/${category.name}">${category.name}</a></td>
                        <%--The String in the note attribute--%>
                    </tr>
                </c:forEach>
            </table>
        </c:when>

        <%--If all tests are false, then do this--%>
        <c:otherwise>
            <h3>No notes!</h3>
        </c:otherwise>
    </c:choose>

    </body>
</html>

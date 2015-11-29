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

    <sf:form method="POST" class="col-lg-12" commandName="user" action="/user">
        <fieldset>
            <legend>Register as a new User</legend>
            <div class="container user_Form">
                <div class="form-group col-lg-12">
                    <label class="control-label col-sm-2">Name</label>
                    <div class="col-md-4">
                        <sf:input type="text" path="name" placeholder="Your name here" class="form-control col-md-4 floating-label"/>
                    </div>
                </div>
                <br>
                <div class="form-group col-lg-12">
                    <label class="control-label col-sm-2">Password</label>
                    <div class="col-md-4">
                        <sf:input type="password" path="password" placeholder="Your Password" class="form-control col-md-4 floating-label"/>
                    </div>
                </div>
            </div>
            <br>

            <div class="container user_Form" style>
                <div class="form-group col-lg-12">
                    <label class="control-label col-sm-2">Home Country</label>
                    <div class="col-md-4">
                        <sf:select id="countryList" path="homeCountry" placeholder="Home Country" class="form-control col-md-4 floating-label">
                            <sf:option value="" disabled="true" selected="true">Choose a country</sf:option>
                            <c:forEach items="${countries}" var="country">
                                <sf:option  value="${country}">
                                    <c:out value="${country}"/>
                                </sf:option>
                            </c:forEach>
                        </sf:select>
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="control-label col-sm-2">Mother Tongue</label>
                    <div class="col-md-4">
                        <sf:select path="languagePref" placeholder="Languages" class="form-control col-md-4 floating-label">
                            <sf:option value="" disabled="true" selected="true">Choose a Language</sf:option>
                            <c:forEach items="${languages}" var="language">
                                <sf:option  value="${language}">
                                    <c:out value="${language}"/>
                                </sf:option>
                            </c:forEach>
                        </sf:select>
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="control-label col-sm-2">When did you first arrive in Iceland?</label>
                    <div class="col-md-4">
                        <sf:select id="arrivalYear" path="arrivalYear" placeholder="Year" class="form-control col-md-4 floating-label">
                            <sf:option value="" disabled="true" selected="true">Choose a year</sf:option>
                            <c:forEach items="${years}" var="year">
                                <sf:option  value="${year}">
                                    <c:out value="${year}"/>
                                </sf:option>
                            </c:forEach>
                        </sf:select>
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="control-label col-sm-2">Gender</label>
                    <div class="col-md-4">
                        <div class="radio radio-primary">
                            <label>
                            <sf:radiobutton path="gender" value="male" checked=""/>Male
                            </label>
                        </div>
                        <div class="radio radio-primary">
                            <label>
                            <sf:radiobutton path="gender" value="female"/>Female
                            </label>
                        </div>
                        <div class="radio radio-primary">
                            <label>
                            <sf:radiobutton path="gender" value="other"/>Other
                            </label>
                        </div>
                    </div>
                </div>
                <div class="form-group col-lg-12">
                    <label class="control-label col-sm-2">Marital Status</label>
                    <div class="col-md-4">
                        <div class="radio radio-primary">
                            <label>
                                <sf:radiobutton path="marital" value="single" checked=""/>Single
                            </label>
                            <div class="radio radio-primary">
                                <label>
                                    <sf:radiobutton path="marital" value="partnered"/>Partnered
                                </label>
                            </div>
                        <div class="radio radio-primary">
                            <label>
                                <sf:radiobutton path="marital" value="married"/>Married
                            </label>
                        </div>
                        <div class="radio radio-primary">
                            <label>
                                <sf:radiobutton path="marital" value="divorced"/>Divorced
                            </label>
                        </div>
                        <div class="radio radio-primary">
                            <label>
                                <sf:radiobutton path="marital" value="widowed"/>Widowed
                            </label>
                        </div>
                    </div>
                </div>
            </div>

                <div class="form-group col-lg-12">
                    <label class="control-label col-sm-2">Employment Status</label>
                    <div class="col-md-4">
                        <div class="radio radio-primary">
                            <label>
                                <sf:radiobutton path="employStatus" value="employedFT" checked=""/>Employed, Full-time
                            </label>
                        </div>
                        <div class="radio radio-primary">
                            <label>
                                <sf:radiobutton path="employStatus" value="employedPT"/>Employed, Part-time
                            </label>
                        </div>
                        <div class="radio radio-primary">
                            <label>
                                <sf:radiobutton path="employStatus" value="unemployed"/>Unemployed
                            </label>
                        </div>
                        <div class="radio radio-primary">
                            <label>
                                <sf:radiobutton path="employStatus" value="retired"/>Retired
                            </label>
                        </div>
                    </div>
                </div>

                <div class="form-group col-lg-12">
                    <label class="control-label col-sm-2">How many children/dependents do you have?</label>
                    <div class="col-md-4">
                        <sf:select path="dependents" placeholder="dependents" class="form-control col-md-4 floating-label">
                                <sf:option value="" disabled="true" selected="true">Number of Dependents</sf:option>
                                <sf:option  value="0">0</sf:option>
                                <sf:option  value="1">1</sf:option>
                                <sf:option  value="2">2</sf:option>
                                <sf:option  value="3">3</sf:option>
                                <sf:option  value="4">4</sf:option>
                                <sf:option  value="5 or more">5 or more</sf:option>
                        </sf:select>
                    </div>
                </div>

                <div class="form-group col-lg-12">
                    <label class="control-label col-sm-2">Which topics interest you?(Check all that apply.)</label>
                    <div class="col-lg-4">
                        <sf:checkboxes id="topicInterests" items="${topics}" var="topic" path="topicInterests" delimiter="<br>" class="form-control col-md-4 "/>
                    </div>
                </div>

                <div class="form-group col-lg-12">
                    <label class="control-label col-sm-2">Would you like to be a Mentor?</label>
                    <div class="col-md-4">
                        <div class="radio radio-primary">
                            <label>
                                <sf:radiobutton path="mentor" value="true" checked=""/>Yes
                            </label>
                        </div>
                        <div class="radio radio-primary">
                            <label>
                                <sf:radiobutton path="mentor" value="false"/>No
                            </label>
                        </div>
                    </div>
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



</body>
</html>
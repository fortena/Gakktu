<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

    <head>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-theme.min.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-multiselect.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/custom.css"/>"/>

        <script type="text/javascript" src="<c:url value="js/jquery-2.1.4.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="js/bootstrap.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="js/bootstrap-multiselect.js"/>"></script>

        <title>Create new Article</title>

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


        <div class="col-lg-12">
            <sf:form class="form-horizontal" method="POST" commandName="article" action="/article">
                <fieldset>
                    <legend>Create new Article</legend>
                    <div class="form-group">
                        <label for="title" class="col-lg-1 control-label pull-left">Title</label>
                        <div class="col-lg-8">
                            <sf:input class="form-control" path="title" type="text"  id="title" placeholder="Your title here"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="content" class="col-lg-1 control-label pull-left">Content</label>
                        <div class="col-lg-8">
                            <sf:textarea class="form-control" rows="20" path="content" type="text"  id="content" placeholder="Your content here"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="categories" class="col-lg-1 control-label pull-left">Categories</label>
                        <div class="col-lg-8">
                            <script type="text/javascript">
                                $('#categories').multiselect();
                            </script>
                            <!-- Note the missing multiple attribute! -->
                            <sf:select class="form-control" path="categories" id="categories" multiple="mulitple">
                                <c:forEach items="${categories}" var="category">
                                    <sf:option  value="${category.id}">
                                        <c:out value="${category.name}"/>
                                    </sf:option>
                                </c:forEach>
                            </sf:select>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-lg-10 col-lg-offset-1">
                            <button class="btn btn-default">Cancel</button>
                            <button type="submit" class="btn btn-primary">Submit</button>
                        </div>
                    </div>
                </fieldset>
            </sf:form>
        </div>
    </body>
</html>

<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

    <head>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-theme.min.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-multiselect.css"/>"/>

        <script type="text/javascript" src="<c:url value="js/jquery-2.1.4.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="js/bootstrap.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="js/bootstrap-multiselect.js"/>"></script>

        <title>Create new Article</title>

    </head>
    <body>
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
                                console.log(${categories});
                            </script>
                            <!-- Note the missing multiple attribute! -->
                            <sf:select class="form-control" path="categories" id="categories" multiple="mulitple" items="${categories}" itemValue="${categories.category_name}">
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

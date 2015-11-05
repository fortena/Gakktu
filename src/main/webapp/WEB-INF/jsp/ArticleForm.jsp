<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>

<html lang="en">

    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
              integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ=="
              crossorigin="anonymous">

        <!-- Optional theme -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css"
              integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX"
              crossorigin="anonymous">

        <!-- Latest compiled and minified JavaScript -->
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"
                integrity="sha512-K1qjQ+NcF2TYO/eI3M6v8EiNYZfA95pQumfvcVrTHtwQVDG+aHRqLi/ETn2uB+1JqwYqVG3LIvdm9lj6imS/pQ=="
                crossorigin="anonymous"></script>
        <title>Create new Article</title>
    </head>
    <body>

        <h1>Create new Article</h1>
        <div class="form-group col-md-6">
            <sf:form method="POST" commandName="article" action="/article">
                <label class="control-label col-md-2">Title</label>
                <div class="col-md-10">
                    <sf:input path="title" type="text" placeholder="Your title here" class="form-control floating-label">
                </div>
                <label class="control-label col-md-2">Content</label>
                <div class="col-md-10">
                    <sf:textarea path="content" placeholder="Your content here" class="form-control textarea"></sf:textarea>
                </div>
                <label class="control-label col-md-2">Keywords</label>
                <div class="col-md-10">
                    <sf:input path="keywords" type="text" placeholder="Your keywords here" class="form-control floating-label">
                </div>
                <label class="control-label col-md-2">Categories</label>
                <div class="col-md-10">
                    <sf:select path="categories" class="form-control">Categories</sf:select>
                </div>
                <div class="col-md-10">
                    <sf:button class="btn btn-primary">Submit</sf:button>
                </div>
            </sf:form>
        </div>
    </body>
</html>

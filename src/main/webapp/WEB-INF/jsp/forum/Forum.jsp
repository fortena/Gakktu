<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

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
            <div class="jumbotron">
                <h1>Welcome to the Forum</h1>

                <p>Feel free to start your own thread if can't find the information you need in any of threads</p>

                <p><a class="btn btn-primary btn-lg" href="/post">Start a new thread</a></p>
            </div>
            <div>
                <table class="table table-striped table-hover ">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Title</th>
                        <th>Users</th>
                        <th>Rating</th>
                        <th>Comments</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr class="info">
                        <td>1</td>
                        <td>Does any one know how to get Húsaleigubætur?</td>
                        <td>Stephanie</td>
                        <td>*****</td>
                        <td>24</td>
                    </tr>
                    <tr class="active">
                        <td>2</td>
                        <td>Hey, I am new here from Ireland. Any fellow Irishman up for a drink;)?</td>
                        <td>David</td>
                        <td>***</td>
                        <td>37</td>
                    </tr>
                    <tr class="info">
                        <td>3</td>
                        <td>Does anybody here have kids age 6 or 9 in Fellaskóli?</td>
                        <td>Sven</td>
                        <td>***</td>
                        <td>5</td>
                    </tr>
                    <tr class="active">
                        <td>4</td>
                        <td>Can someone help me understand the strætó webpage? I'm totally lost :/</td>
                        <td>Anita</td>
                        <td>*****</td>
                        <td>14</td>
                    </tr>

                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>

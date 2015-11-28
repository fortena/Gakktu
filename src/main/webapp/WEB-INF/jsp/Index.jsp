<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" %>

<html lang="is">

    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap.min.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/bootstrap-theme.min.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<c:url value="/css/custom.css"/>"/>

        <script type="text/javascript" src="<c:url value="js/jquery-2.1.4.min.js"/>"></script>
        <script type="text/javascript" src="<c:url value="js/bootstrap.min.js"/>"></script>

        <title>Gakktu í Bæinn</title>

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
                    <input type="text" class="form-control col-lg-8" placeholder="UserID">Log In:
                    <input type="password" class="form-control col-lg-8" placeholder="Password">
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
    <div class="col-lg-12 col-lg-offset-1">
    <h1>Gakktu í Bæinn</h1>
        <h3>a community for new icelanders</h3>
    </div>
    <img src="<c:url value="/img/map.png"/>"/>

    </body>

    <footer>Class HBV501G, University of Iceland, Fall 2015</footer>
</html>

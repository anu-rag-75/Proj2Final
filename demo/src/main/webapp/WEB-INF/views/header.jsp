<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>Collaboration Project</title>

    <!-- Angular JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js" > </script>
    <script type="text/javascript" src="<c:url value="/resources/js/controller.js" />"></script>
    

    <%--Jquery--%>
    <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.4.min.js"></script>

    <%--Data Table--%>
    <script type="text/javascript" src="https://cdn.datatables.net/1.10.10/js/jquery.dataTables.min.js"></script>

    <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- Carousel CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">

    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<style> 
body
{
background-image:url("http://www.planwallpaper.com/static/images/6163-abstract-color-background.jpg");
}
</style>

</head>
<!-- NAVBAR
================================================== -->
<body>
<div class="navbar-wrapper">
    <div class="container">

        <nav class="navbar navbar-inverse navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar"
                            aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                 
                </div>
                 <div align="right" class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="display:block">

                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                    <li><img src="http://letarussell.com/wp-content/uploads/2013/05/successful-collaboration.png" height="90"></li>
                        <li><a href="<c:url value="/" /> ">Home</a></li>
                       <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                                  <li><a href="<c:url value="/editpost" /> ">Recent Posts</a></li>
                  	   </c:if>
                      <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                 <li><a href="<c:url value="/recentpost" /> ">Recent Posts</a></li>
                      </c:if>
                    <li><a href="<c:url value="/chat" /> ">Chat</a></li>
                        </ul>
                       <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                             <li><a href="<c:url value="/addpost" />">Add Post</a></li>
                      <li><a href="<c:url value="/myposts" /> ">My Posts</a></li>
                      <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
                                  </c:if>
                        <c:if test="${pageContext.request.userPrincipal.name  == null}">
                        <li><a href="<c:url value="/login" />">Login</a></li>
                        <li><a href="<c:url value="/register" />">Register</a></li>
                        </c:if>
                    </ul>
                </div>
            </div></div>
        </nav>

    </div>
</div>
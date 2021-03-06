<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Realtor firma</title>
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="<c:url value="/css/main.css"/>">
</head>
<body>

<jsp:include page="includes/header.jsp"/>

<div id="index-carousel" class="carousel slide" data-interval="3000" data-ride="carousel">

    <ol class="carousel-indicators">
        <li data-target="#index-carousel" data-slide-to="0" class="active"></li>
        <li data-target="#index-carousel" data-slide-to="1"></li>
        <li data-target="#index-carousel" data-slide-to="2"></li>
    </ol>

    <div class="carousel-inner">

        <div class="active item item-1">
            <div class="carousel-caption">
                <h3>Done by Kapel_S</h3>
                <h1>Realtor firma "Capital"</h1>
            </div>
        </div>

        <div class="item item-2">
            <div class="carousel-caption">
                <h3>Done by Kapel_S</h3>
                <h1>Realtor firma "Capital"</h1>
            </div>
        </div>

        <div class="item item-3">
            <div class="carousel-caption">
                <h3>Done by Kapel_S</h3>
                <h1>Realtor firma "Capital"</h1>
            </div>
        </div>

    </div>

    <a class="carousel-control left" href="#index-carousel" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left"></span>
    </a>
    <a class="carousel-control right" href="#index-carousel" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right"></span>
    </a>
</div>

</body>
</html>
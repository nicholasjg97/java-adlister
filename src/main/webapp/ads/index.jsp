<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Ads</title>
    <style>

    </style>
    <jsp:include page="/partials/head.jsp">
        <jsp:param name="title" value="Showing all ads"/>
    </jsp:include>

</head>

<body>

    <jsp:include page="/partials/navbar.jsp"/>

    <h3>Ads to Show:</h3>

    <c:forEach var="ad" items ="${ads}">
        <div class="ad">
            <h2>${ad.title}</h2>
            <p>${ad.description}</p>
            <br>
        </div>
    </c:forEach>

</body>
</html>

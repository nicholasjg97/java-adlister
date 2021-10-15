<%@ page import="entity.Person" %><%--
  Created by IntelliJ IDEA.
  User: jesusgaytan70
  Date: 10/15/21
  Time: 9:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <%
        // be in a servlet
        Person person = new Person(4, "Karen", "Smith", 35);
        request.setAttribute("person", person);
    %>

    <ul>
        <li>${person.id}</li>
        <li>${person.firstName}</li>
        <li>${person.lastName}</li>
        <li>${person.age}</li>
    </ul>

</body>
</html>

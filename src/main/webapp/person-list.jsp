<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="entity.Person" %><%--
  Created by IntelliJ IDEA.
  User: jesusgaytan70
  Date: 10/14/21
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // would normally go in a servlet
    List<Person> people = new ArrayList<>(Arrays.asList(
            new Person(1, "Nico", "Gaytan", 24),
            new Person(2, "JUstin", "Reich", 30),
            new Person(3, "Javier", "Ruedas", 35)
    ));

    // pass the array people to our view??
    request.setAttribute("people", people);

%>


<html>
<head>
    <title>Person List</title>
</head>
<body>

<%--    Display people in a table using JSTL --%>

    <table>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Age</th>
        </tr>
        <c:forEach var="person" items="${people}">
            <tr>
                <td>${person.id}</td>
                <td>${person.firstName}</td>
                <td>${person.lastName}</td>
                <td>${person.age}</td>
            </tr>
        </c:forEach>
<%--        <tr>--%>
<%--            <td>1</td>--%>
<%--            <td>Nico</td>--%>
<%--            <td>Gaytan</td>--%>
<%--            <td>24</td>--%>
<%--        </tr>--%>
    </table>



</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
  String username = request.getParameter("username");
  String password = request.getParameter("password");
  String reqMethod = request.getMethod();

  if (reqMethod.equals("POST")) {
    if (username.equals("admin") && password.equals("password")) {
      response.sendRedirect("/profile.jsp");
    }
  }
%>

<!doctype html>
<html>
<head>
    <title>Login</title>
</head>
<body>

    <h1>Please Login</h1>
    <form action = "/login.jsp" method = "POST">
      <label for="username">Username</label>
      <input type="text" id="username" name="username">
      <% request.setAttribute("username", request.getParameter("username"));%>
      <label for="password">Password</label>
      <input type="password" id="password" name="password">
      <% request.setAttribute("password", request.getParameter("password"));%>
      <input type="submit" value="Login"/>
    </form>

</body>
</html>
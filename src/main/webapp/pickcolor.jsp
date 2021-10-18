<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Color Picker</title>
</head>
<body>

<h1>Enter a Color of Your Choosing</h1>

<form action="/pickcolor" method="POST">
    <label for="color">Enter Color:</label><br>
    <input type="text" id="color" name="color" value=""><br>

    <br>

    <input type="submit" value="Submit">
</form>

</body>
</html>

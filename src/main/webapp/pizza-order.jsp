<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order</title>
</head>
<body>

    <h1>Order a Pizza</h1>

    <form action="/pizza-order" method="POST">
        <label for="size">Select Size:</label>
            <select name="size" id="size">
                <option value="">--Select a Size--</option>
                <option id="small" name="size" value="small">Small</option>
                <option id="medium" name="size" value="medium">Medium</option>
                <option id="large" name="size" value="large">Large</option>
            </select>

        <br>

        <h4>Select Crust Type</h4>
        <input type="radio" id="regular" name="crust" value="regular">
        <label for="regular">Regular</label><br>
        <input type="radio" id="thin" name="crust" value="thin">
        <label for="thin">Thin</label><br>
        <input type="radio" id="deep" name="crust" value="deep">
        <label for="deep">Deep-Dish</label><br>

        <br>

        <h4>Select Toppings</h4>
        <input type="checkbox" id="onions" name="toppings" value="onion">
        <label for="onions">Pepperoni</label><br>
        <input type="checkbox" id="pineapple" name="toppings" value="pineapple">
        <label for="pineapple">Meat</label><br>
        <input type="checkbox" id="ham" name="toppings" value="ham">
        <label for="ham">Ham</label><br>

        <br>

        <h4>Select Sauce Type:</h4>
        <input type="radio" id="marinara" name="sauce" value="marinara">
        <label for="marinara">Marinara</label><br>
        <input type="radio" id="white" name="sauce" value="white">
        <label for="white">White</label><br>
        <input type="radio" id="none" name="sauce" value="none">
        <label for="none">None</label><br>

        <br>

        <label for="address">Enter Address:</label><br>
        <input type="text" id="address" name="address" value=""><br>

        <br>

        <input type="submit" value="Submit Order">


    </form>

</body>
</html>

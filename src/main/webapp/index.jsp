<html>
<head>
    <title>Online Calc by JarX</title>
</head>
<body>

<h1>Welcome to online calculator </h1>

<p>Please enter two numbers and choose the operator <br>
(for example: 2, 5 and "sum") and push the button - Calculate
</p>

<form action="calc" method="post">
        <input type="text" name="firstNumber">
        <input type="text" name="secondNumber">
        <input type="radio" name="action" value="sum">Sum
        <input type="radio" name="action" value="multiply">Multiply
        <input type="radio" name="action" value="subtract">Subtract
        <input type="radio" name="action" value="dev">Dev
        <input type="submit" value="Calculate">
</form>
</body>
</html>

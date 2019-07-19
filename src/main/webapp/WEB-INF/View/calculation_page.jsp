<%--
  Created by IntelliJ IDEA.
  User: YaroslavPC
  Date: 18.07.2019
  Time: 23:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Online Calc by JarX</title>
</head>
<body>

<%@page import="Model.CalculationModel" %>

<%CalculationModel calculationModel = (CalculationModel) request.getAttribute("calculationModel");
String message = (String) request.getAttribute("message");
if (calculationModel == null) calculationModel = new CalculationModel();
if (message == null) message = "";
%>

<h1>Welcome to online calculator </h1>

<p>Please enter two numbers with operator <br>
    "for example: 2 + 5" and push button - Calculate
</p>

<p><i><%=message%></i></p>

<form action="calc" method="post">
    <input type="text" name="firstNumber" value="<%=calculationModel.getFirstNumber()%>">
    <input type="text" name="secondNumber" value="<%=calculationModel.getSecondNumber()%>">
    <input type="radio" name="action" value="sum">Sum
    <input type="radio" name="action" value="multiply">Multiply
    <input type="radio" name="action" value="subtract">Subtract
    <input type="radio" name="action" value="dev">Dev
    <input type="submit" value="Calculate">
</form>

</body>
</html>

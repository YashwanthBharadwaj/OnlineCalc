<%--
  Created by IntelliJ IDEA.
  User: YaroslavPC
  Date: 19.07.2019
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Online Calc by JarX</title>
</head>
<body>
<h1>Here is your result</h1>
<%@page import="Model.CalculationModel" %>
<% CalculationModel calculationModel = (CalculationModel)request.getAttribute("calculationModel");%>
<table cellspacing="5" cellpadding="5" border="1">
    <tr>
        <td align="right">The Result is:</td>
        <td><%=calculationModel.getResult()%></td>
    </tr>
</table>
<p>If you want to try again, please push "Return Button"</p>
<form action="index.jsp" method="post">
    <input type="submit" value="Return">
</form>
</body>
</html>

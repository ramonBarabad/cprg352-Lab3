<%-- 
    Document   : arithmeticcalculator
    Created on : May 30, 2022, 9:27:17 PM
    Author     : barab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Arithmetic Calculator</title>
    </head>
    <body>
        <h1>Arithmetic Calculator</h1>
        <form method="post" action="arithmetic">
            <label>First:</label>
            <input type="text" name="first_number" value="${firstNumber}"/>
            <br>
            <label>Second:</label>
            <input type="text" name="second_number" value="${secondNumber}"/>
            <br>
            <input type="submit" name="btn_operation" value="+"/>
            <input type="submit" name="btn_operation" value="-"/>
            <input type="submit" name="btn_operation" value="*"/>
            <input type="submit" name="btn_operation" value="%"/>
            <br><br>
            <label>${notification}</label>
            <br>
            <a href="age" >Age Calculator</a>
        </form>
    </body>
</html>

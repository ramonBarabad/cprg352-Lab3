<%-- 
    Document   : agecalculator
    Created on : May 30, 2022, 8:27:39 PM
    Author     : barab
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Age Calculator</title>
    </head>
    <body>        
        <h1>Age Calculator</h1>
        <form method="post" action="age">
            <label>Enter your age:</label>
            <input type="text" name="current_age" value=""/>
            <br>
            <input type="submit" value="Age next birthday"/>
            <br>
            <label>${notification}</label>
            <br>
            <a href="arithmetic" >Arithmetic Calculator</a>
        </form>
    </body>
</html>

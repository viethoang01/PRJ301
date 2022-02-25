<%-- 
    Document   : Login
    Created on : Feb 22, 2022, 10:18:12 AM
    Author     : Administrator
--%>

<%@page import="model.Users"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form name="input" action="loginSession" method="post">



            User name:<input type="text" name="username" value=""/>
            <p>
                Password:<input type="password" name="password" value=""/>

            <p>


                <input type="checkbox" name="remember"/>Remember me<br>
                <input type="submit" value="Login"/>

        </form>
    </body>
</html>

<%-- 
    Document   : autentificacion
    Created on : 15-06-2018, 23:56:16
    Author     : Gerald
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css.css">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="m">
            <h1> Autentificación </h1>
            <form action="menup.jsp" >
                <p> Usuario <input type="text" name="user"> </p>
                <p> Password <input type="pass" name="pass"> </p>
                <p> <input type="checkbox" name="remember"> Recordar  </p>
                <input type="submit" value="Ingresar">
            </form>
        </div>    
    </body>
</html>
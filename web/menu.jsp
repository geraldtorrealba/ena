<%-- 
    Document   : menu
    Created on : 16-06-2018, 0:02:05
    Author     : Gerald
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css.css">
        <title>JSP Page</title>
        <style>
            
            
            form {
                margin: 3%;
            }
            
            input {
                width: 260px;
                padding: 2%;
            }
            
        </style>
    </head>
    <body>
        
        <div class="m">
            <h1> Menú Principal </h1> 
            
            <form action="ingresarr.jsp"> 
                <input type="submit" value="Ingresar Requerimiento"> 
            </form> 
            
            <form action="consultarr.jsp"> 
                <input type="submit" value="Consultar Requerimiento"> 
            </form>
            
            <form action="cerrarr.jsp"> 
                <input type="submit" value="Cerrar Requerimiento"> 
            </form>
            
        </div>
    </body>
</html>
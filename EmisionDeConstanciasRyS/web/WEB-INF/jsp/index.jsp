<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en" xmlns:th="http://www.thymeleaf.org">
    <head>
        <!-- JQUEERY-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <!-- FRAMEWORK BOOTSTRAP para etilo de la pagina-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">      
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
        <!-- Los iconos de tipo solid de Fontawesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.11/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.11/js/all.js"></script>
        <!-- Nuestro css-->
        <link rel="stylesheet" type="text/css" href="cssVista/index.css">
        <title>Login</title>
    </head>
    <body>
        <div class="modal-dialog text-center">
            <div class="col-sm-10 main-section">
                <div class="modal-content">
                    <div class="col-12 user-img">
                        <img src="imgVista/Lobo.jpg" />
                    </div>
                    <form class="col-12" method="POST">
                        <div class="form-group" id="user-group">
                            <input class="form-control" type="text" placeholder="Matricula" name="Matricula"/>                            
                        </div>
                        <div class="form-group" id="contrasena-group">
                            <input class="form-control" type="password" placeholder="Contraseña" name="pass"/>                            
                        </div>
                        <button type="submit" class="btn btn-primary"><i class="fas fa-sign-in-alt"></i>  Iniciar sesión</button>
                    </form>
                    <div class="col-12 forgot">
                        <a href="#">Recordar contraseña</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- JQUEERY-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- FRAMEWORK BOOTSTRAP para etilo de la pagina-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">      
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js"></script>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <link rel="stylesheet" href="https://kit-free.fontawesome.com/releases/latest/css/free.min.css" media="all">
        <link rel="shortcut icon" href="imgVista/ico.png">
        <link rel="stylesheet" href="cssVista/configuracion.css" type="text/css">
        <meta content="text/html; charset=UTF-8">
        <title>Configuración</title>
    </head>
    <body>

        <div class="margen1">
            <h1>Configuración</h1>
            <div class="margen2">
                <div class="margen3"><h3>Administrador</h3></div>
            </div>
            <div class="modal-dialog text-center">
                <div class="col-sm-10 main-section">
                    <div class="modal-content">
                        <form class="col-12" method="POST">
                            <div class="form-group" id="user-group">
                                <input class="form-control" type="text" placeholder="Usuario" name="Matricula"/>                            
                            </div>
                            <div class="form-group" id="contrasena-group">
                                <input class="form-control" type="password" placeholder="Contraseña" name="pass"/>                            
                            </div>
                            <div class="form-group" id="rcontrasena-group">
                                <input class="form-control" type="password" placeholder="Repetir Contraseña" name="pass"/>                            
                            </div>
                            <button type="submit" class="btn-iniciar"><i class="fas fa-save"></i>  Guardar</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>

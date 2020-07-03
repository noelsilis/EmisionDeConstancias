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
                <div class="margen3">
                    <h3>Administrador</h3>
                </div>
            </div>
            <div class="margen3_1">
                <div class="margen3-1-1">
                    <button type="button" class="btn-editar" data-toggle="modal" data-target="#modal1">
                        <i class="fas fa-user-edit"></i>
                    </button>
                    <button type="button" class="btn-agregar" data-toggle="modal" data-target="#modal2">
                        <i class="fas fa-user-plus"></i>
                    </button>
                </div>
                <div class="margen3-1-2">

                </div>
            </div>
            <!--<a href="#modal1" class="btn btn-primary" data-toggle="modal">Boton Enlace</a>-->
            <!--Inicia modal-->
            <div class="modal fade" id="modal1">
                <!--modal-lg: sirve para cambiar el tamaño del modal-->
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Editar datos</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                &times;
                            </button>
                        </div>
                        <div class="modal-body">
                            <!--inicia formulario-->
                            <form class="col-12" method="POST">
                                <div class="form-group" id="user-group">
                                    <c:forEach var="dato" items="${lista}">
                                        <input class="form-control" type="text" placeholder="Usuario" name="X" value="${dato.NoControl}"/>    
                                </div>
                                <div class="form-group" id="contrasena-group">
                                    <input class="form-control" type="password" placeholder="Contraseña actual" name="Y" value="${dato.Contraseña}"/> 
                                     </c:forEach>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn-cerrar" data-dismiss="modal">Cerrar</button>
                                    <button type="submit?id=${dato.NoControl}" class="btn-guardar">Editar</button>
                                </div>
                            </form>
                            <!--fin formulario-->
                        </div>
                    </div>
                </div>
            </div>
            <!--Fin modal-->
            <!--Inicia modal2-->
            <div class="modal fade" id="modal2">
                <!--modal-lg: sirve para cambiar el tamaño del modal-->
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Agregar nuevo administrador</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                &times;
                            </button>
                        </div>
                        <div class="modal-body">
                            <!--inicia formulario-->
                            <form class="col-12" method="POST">
                                <div class="form-group" id="user-nomb">
                                    <input class="form-control" type="text" placeholder="Nombre" name="Nombre"/>                            
                                </div>
                                <div class="form-group" id="user-pat">
                                    <input class="form-control" type="text" placeholder="Apellido paterno" name="APaterno"/>                            
                                </div>
                                <div class="form-group" id="user-mat">
                                    <input class="form-control" type="text" placeholder="Apellido materno" name="AMaterno"/>                            
                                </div>
                                <div class="form-group" id="user-group">
                                    <input class="form-control" type="text" placeholder="Nombre de Usuario" name="Matricula"/>                            
                                </div>
                                <div class="form-group" id="contrasena-group">
                                    <input class="form-control" type="password" placeholder="Contraseña" name="pass"/>                            
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn-cerrar" data-dismiss="modal">Cerrar</button>
                                    <button type="submit" class="btn-guardar">Agregar</button>
                                </div>
                            </form>
                            <!--fin formulario-->
                        </div>
                    </div>
                </div>
            </div>
            <!--Fin modal2-->
        </div>
        <!-- JS, Popper.js, and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
                integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
                integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
                integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
        crossorigin="anonymous"></script>

    </body>
</html>
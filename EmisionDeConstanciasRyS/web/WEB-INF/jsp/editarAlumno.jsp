<%-- 
    Document   : editar
    Created on : 18/01/2020, 09:38:39 PM
    Author     : Alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!-- JQUEERY-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- FRAMEWORK BOOTSTRAP para etilo de la pagina-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">      
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js"></script>
        <!-- Los iconos de tipo solid de Fontawesome-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.11/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.11/js/all.js"></script>
        <link rel="shortcut icon" href="imgVista/ico.png">
        <!-- Nuestro css-->
        <link rel="stylesheet" type="text/css" href="cssVista/formularios.css">
        <title>Crud</title>
    </head>
    <body>
        <div class="modal-dialog text-center">
            <div class="col-sm-10 main-section">
                <div class="modal-content">
                    <div class="col-12" style="padding-top: 20px; padding-bottom: 20px; color: white">
                        <h4>Editar datos</h4>
                    </div>
                    <!--inicia formulario-->
                    <form class="col-12" method="POST">
                        <div class="form-group" id="user-group">
                            <input class="form-control" type="text" placeholder="No. Control" name="Matricula" value="${tmp[0].NoControl}"/>                            
                        </div>
                        <div class="form-group" id="user-name">
                            <input class="form-control" type="text" placeholder="Nombre(s)" name="Nombre"  value="${tmp[0].Nombres}"/>                            
                        </div>
                        <div class="form-group" id="user-pat">
                            <input class="form-control" type="text" name="APaterno" value="${tmp[0].APaterno}"/>                            
                        </div>
                        <div class="form-group" id="user-mat">
                            <input class="form-control" type="text" placeholder="Apellido materno" name="AMaterno" value="${tmp[0].AMaterno}"/>              
                        </div>
                        <div class="form-group" id="user-especial">
                            <input class="form-control" type="text" placeholder="Especialidad" name="Especialidad" value="${tmp[0].Especialidad}"/>                            
                        </div>
                        <div class="form-group" id="user-mail">
                            <input class="form-control" type="text" placeholder="Email" name="Email" value="${tmp[0].Email}"/>                            
                        </div>

                    </form>
                    <!--fin formulario-->
                    <div class="col-12 forgot">
                        <input type="submit" value="Actualizar" class="btn btn-success" >
                        <a href="datosAlumno.htm" arget="contenedorIFrame" class="btn btn-primary">Regrsar</a>
                    </div>
                </div>
            </div>
        </div>
        <!--<div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Edtar Registro</h4>
                </div>
                <div class="card-body">
                    
                    <form  method="POST">
                        <label>No.Control</label>
                        <input type="text" name="Matricula" class="form-control" >
                        <label>Nombres</label>
                        <input type="text" name="Nombre" class="form-control">
                        <label>APaterno</label>
                        <input type="text" name="APaterno" class="form-control">
                        <label>AMaterno</label>
                        <input type="text" name="AMaterno" class="form-control">
                        <label>Especialidad</label>
                        <input type="text" name="Especialidad" class="form-control">
                        <label>Email</label>
                        <input type="text" name="Email" class="form-control">
                        <input type="submit" value="Actualizar" class="btn btn-success" >
                        <a href="datosAlumno.htm" arget="contenedorIFrame" >Regrsar</a>
                    </form>
                </div>
            </div>
        </div>-->
    </body>
</html>

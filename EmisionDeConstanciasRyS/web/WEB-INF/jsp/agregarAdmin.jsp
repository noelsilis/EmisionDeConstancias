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
                    <div class="col-12 encabezado">
                        <h4>Agregar datos</h4>
                    </div>
                    <!--inicia formulario-->
                    <form class="col-12" method="POST">
                        <div class="form-group" id="user-nomb">
                            <input class="form-control" type="text" placeholder="Nombre" name="Matricula"/>                            
                        </div>
                        <div class="form-group" id="user-pat">
                            <input class="form-control" type="text" placeholder="Apellido paterno" name="Matricula"/>                            
                        </div>
                        <div class="form-group" id="user-mat">
                            <input class="form-control" type="text" placeholder="Apellido materno" name="Matricula"/>                            
                        </div>
                        <div class="form-group">
                            <input class="form-control" type="text" placeholder="Nombre de Usuario" name="Matricula"/>                            
                        </div>
                        <div class="form-group" >
                            <input class="form-control" id="cnueva" type="text" placeholder="Contraseña" name="pass"/>                            
                        </div>
                        <div class="form-group">
                            <input class="form-control" id="rcnueva" type="text" placeholder="Confirmar contraseña" name="cpass"/>                            
                        </div>

                    </form>
                    <!--fin formulario-->
                    <div class="col-12 forgot">
                        <input type="submit" value="Agregar" class="btn btn-success" >
                        <a href="configuarcion.htm" arget="contenedorIFrame" class="btn btn-primary">Regresar</a>
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
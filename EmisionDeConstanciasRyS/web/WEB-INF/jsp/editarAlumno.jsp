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
                    <div class="col-12">
                        <h4>Editar datos</h4>
                    </div>
                    <!--inicia formulario-->
                    <form class="col-12" method="POST">
                        <div class="form-group" id="user-group">
                            <input class="form-control" type="text" placeholder="No. Control" name="Matricula" value="${tmp[0].NoControl}"/>                            
                        </div>
                        <div class="form-group" id="user-name">
                            <input class="form-control" type="text" placeholder="Nombres" name="Nombre"  value="${tmp[0].Nombres}"/>                            
                        </div>
                        <div class="form-group" id="user-pat">
                            <input class="form-control" type="text" placeholder="Apellido Paterno" name="APaterno" value="${tmp[0].APaterno}"/>                            
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
                        <div class="col-12 forgot">
                            <input type="submit" value="Actualizar" class="btn btn-success" >
                            <a href="datosAlumno.htm" arget="contenedorIFrame" class="btn btn-primary">Regrsar</a>  
                            <a href="datosAlumno.htm" arget="contenedorIFrame" class="btn btn-primary">Regresar</a>
                        </div>
                    </form>
                    <!--fin formulario-->
                </div>
            </div>
        </div>
    </body>
</html>
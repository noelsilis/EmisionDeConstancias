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
        <link rel="stylesheet" type="text/css" href="cssVista/index.css">
        <title>Crud</title>
    </head>
    <body>
        <div class="modal-dialog text-center">
            <div class="col-sm-10 main-section">
                <div class="modal-content">
                    <div class="col-12" style="padding-top: 20px; padding-bottom: 20px; color: white">
                        <h4>Agregar Tramites</h4>
                    </div>
                    <!--inicia formulario-->
                    <form class="col-12" method="POST">
                        <div class="form-group" id="user-group">
                            <input class="form-control" type="text" placeholder="Tramite" name="tipoTramite" value="${tmp[0].tipoTramite}"/>                            
                        </div>
                        <select class="form-group" id="sel1" name="estado">
                            <option class="form-control">No iniciado</option>
                            <option class="form-control">En proceso</option>
                            <option class="form-control">Finalizado</option>
                        </select>
                        <div class="form-group" id="user-name">
                            <input class="form-control" type="text" placeholder="Entrega AAAA-MM-DD" name="fechaEntrega" value="${tmp[0].fechaEntrega}"/>                            
                        </div>
                        <div class="form-group" id="user-pat">
                            <input class="form-control" type="text" placeholder="URL vista"  name="vistaDoc" value="${tmp[0].vistaDoc}"/>                           
                        </div>
                        <div class="form-group" id="user-pat">
                            <input class="form-control" type="text" placeholder="URL descarga"  name="descargaDoc" value="${tmp[0].descargaDoc}"/>                           
                        </div>
                        <div class="form-group" id="user-especial">
                            <input class="form-control" type="text" placeholder="No. Control" name="NoControl" value="${tmp[0].NoControl}"/>                            
                        </div>
                        <div class="col-12 forgot">
                            <input type="submit" value="Actualizar" class="btn btn-success" >
                            <a href="especialidadesTramitesSS.htm" arget="contenedorIFrame" class="btn btn-danger">Cacelar</a>
                        </div>
                    </form>
                    <!--fin formulario-->
                </div>
            </div>
        </div>
    </body>
</html>
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
        <<<<<<< HEAD
        <link rel="stylesheet" type="text/css" href="cssVista/index.css">
        <title>Crud</title>
    </head>
    <body>
        <div class="modal-dialog text-center">
            <div class="col-sm-10 main-section">
                <div class="modal-content">
                    <div class="col-12" style="padding-top: 20px; padding-bottom: 20px; color: white">
                        <h4>Agregar Tramites</h4>
                        <link rel="stylesheet" type="text/css" href="cssVista/formularios.css">
                        <title>Tramite</title>
                        </head>
                        <body>
                            <div class="modal-dialog text-center modal-xl">
                                <div class="col-sm-10 main-section">
                                    <div class="modal-content">
                                        <div class="col-12" style="padding-top: 20px; padding-bottom: 20px; color: white">
                                            <h4>Agregar trámites</h4>
                                        </div>
                                        <!--inicia formulario-->
                                        <form class="col-12" method="POST">
                                            <div class="form-group" id="user-group">
                                                <input class="form-control" type="text" placeholder="Tramite" name="tipoTramite"/>                            
                                            </div>
                                            <select class="form-group" id="sel1" name="estado">
                                                <option class="form-control">No iniciado</option>
                                                <option class="form-control">En proceso</option>
                                                <option class="form-control">Finalizado</option>
                                            </select>
                                            <div class="form-group" id="user-name">
                                                <input class="form-control" type="text" placeholder="Entrega AAAA-MM-DD" name="fechaEntrega"/>                            
                                            </div>
                                            <div class="form-group" id="user-pat">
                                                <input class="form-control" type="text" placeholder="URL vista"  name="vistaDoc"/>                           
                                            </div>
                                            <div class="form-group" id="user-pat">
                                                <input class="form-control" type="text" placeholder="URL descarga"  name="descargaDoc"/>                           
                                            </div>
                                            <div class="form-group" id="user-especial">
                                                <input class="form-control" type="text" placeholder="No. Control" name="NoControl"/>                            
                                            </div>
                                            <div class="col-12 forgot">
                                                <input type="submit" value="Agregar" class="btn btn-success" >
                                            </div>
                                            =======
                                            <select id="form-control" name="Tramite">
                                                <option value="Solicitud de Servicio social">Solicitud de Servicio social</option>
                                                <option value="Guía para la carta de aceptación">Guía para la carta de aceptación</option>
                                                <option value="Carta Compromiso de Servicio Social">Carta Compromiso de Servicio Social</option>
                                                <option value="Registro de Servicio Social">Registro de Servicio Social</option>
                                                <option value="Reporte Bimestral de Servicio Social">Reporte Bimestral de Servicio Social</option>
                                                <option value="Formato de evaluación cualitativa del prestador de Servicio Social">Formato de evaluación cualitativa del prestador de Servicio Social</option>
                                                <option value="Formato de autoevaluación cualitativa del prestador de Servicio Social">Formato de autoevaluación cualitativa del prestador de Servicio Social</option>
                                                <option value="Formato de evaluación de las actividades del prestador de Servicio Social">Formato de evaluación de las actividades del prestador de Servicio Social</option>
                                                <option value="Conclusiones de Servicio Social">Conclusiones de Servicio Social</option>
                                                <option value="Guía para la carta de terminación de Servicio Social">Guía para la carta de terminación de Servicio Social</option>
                                            </select>                            
                                    </div>
                                    <div class="form-group">
                                        <div class="derecha">
                                            <select id="form-control" name="Estado">
                                                <option value="No iniciado">No iniciado</option>
                                                <option value="En proceso">En proceso</option>
                                                <option value="Finalizado">Finalizado</option>
                                            </select>
                                            <input class="form-control-edit" type="text" placeholder="Fecha: aaaa/mm/dd" name="Fecha" value=""/> 
                                            <input class="form-control-edit" type="text" placeholder="Número de control" name="Matricula" value=""/> 
                                        </div>
                                    </div>


                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Link de vista del archivo" name="" value=""/>              
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Link de descarga del archivo" name="Especialidad" value=""/>                            
                                    </div>
                                    <div class="form-group">
                                        <input class="form-control" type="text" placeholder="Email" name="Email: ejemplo@email.com" value="${tmp[0].Email}"/>                            
                                    </div>
                                    <div class="col-12 forgot">
                                        <input type="submit" value="Actualizar" class="btn btn-success" >
                                        <a href="datosAlumno.htm" arget="contenedorIFrame" class="btn btn-primary">Regrsar</a>
                                    </div>
                                    <!---->
                                    </form>
                                    <!--fin formulario-->
                                </div>
                            </div>
                    </div>
                    </body>
                    </html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imgVista/ico.png">
        <link rel="stylesheet" href="cssVista/menu_t_servicio.css" type="text/css">
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <link rel="stylesheet" href="https://kit-free.fontawesome.com/releases/latest/css/free.min.css" media="all">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
        <title>Tramite Servicio</title>
    </head>
    <body>
        <!--<input type="checkbox" id="check">-->
        <div class="margen1">
            <h1>Trámite Servicio Social</h1>
            <div class="margen2">
                <div class="margen3">
                    <h3>Proceso</h3>
                </div>
            </div>
            <div class="margen3_1">
                <table>
                    <tr>
                        <th>Pasos</th>
                        <th>Descargar/Ver</th>
                        <th>Estado</th>
                    </tr>
                    <tr>
                        <td>Solicitud de Servicio social</td>
                        <td>
                            <!--inicio Modal-->
                            <div id="ex1" class="modal f1-modal">
                                <div><img src="imgVista/servicio_social_001.png" style="center" width="105%" height="300%"></div>
                                <a href="#" rel="modal:close">Close</a>
                            </div>
                            <!--fin Modal-->
                            <a class="btn-one"><i class="fas fa-file-download"></i></a>
                            <!--inicio llamada modal-->
                            <a class="btn-one" href="#ex1" rel="modal:open"><i class="fas fa-eye"></i></a></p
                            <!--fin llamada modal-->
                        </td>
                        <td>Finalizado</td>
                    </tr>
                    <tr>
                        <td>Guía para la carta de aceptación</td>
                        <td><a class="btn-two"><i class="fas fa-file-download"></i></a>
                            <a class="btn-two"><i class="fas fa-eye"></i></a></td>
                        <td>Finalizado</td>
                    </tr>
                    <tr>
                        <td>Carta Compromiso de Servicio Social</td>
                        <td><a class="btn-one"><i class="fas fa-file-download"></i></a>
                            <a class="btn-one"><i class="fas fa-eye"></i></a></td>
                        <td>En proceso</td>
                    </tr>
                    <tr>
                        <td>Registro de Servicio Social</td>
                        <td><a class="btn-two"><i class="fas fa-file-download"></i></a>
                            <a class="btn-two"><i class="fas fa-eye"></i></a></td>
                        <td>No iniciado</td>
                    </tr>
                    <tr>
                        <td>Reporte Bimestral de Servicio Social</td>
                        <td><a class="btn-one"><i class="fas fa-file-download"></i></a>
                            <a class="btn-one"><i class="fas fa-eye"></i></a></td>
                        <td>No iniciado</td>
                    </tr>
                    <tr>
                        <td>Formato de evaluación cualitativa del prestador de Servicio Social</td>
                        <td><a class="btn-two"><i class="fas fa-file-download"></i></a>
                            <a class="btn-two"><i class="fas fa-eye"></i></a></td>
                        <td>No iniciado</td>
                    </tr>
                    <tr>
                        <td>Formato de autoevaluación cualitativa del prestador de Servicio Social</td>
                        <td><a class="btn-one"><i class="fas fa-file-download"></i></a>
                            <a class="btn-one"><i class="fas fa-eye"></i></a></td>
                        <td>No iniciado</td>
                    </tr>
                    <tr>
                        <td>Formato de evaluación de las actividades del prestador de Servicio Social</td>
                        <td><a class="btn-two"><i class="fas fa-file-download"></i></a>
                            <a class="btn-two"><i class="fas fa-eye"></i></a></td>
                        <td>No iniciado</td>
                    </tr>
                    <tr>
                        <td>Conclusiones de Servicio Social</td>
                        <td><a class="btn-one"><i class="fas fa-file-download"></i></a>
                            <a class="btn-one"><i class="fas fa-eye"></i></a></td>
                        <td>No iniciado</td>
                    </tr>
                    <tr>
                        <td>Guía para la carta de terminación de Servicio Social</td>
                        <td><a class="btn-two"><i class="fas fa-file-download"></i></a>
                            <a class="btn-two"><i class="fas fa-eye"></i></a></td>
                        <td>No iniciado</td>
                    </tr>
                </table>
            </div>
        </div>
        <!-- Remember to include jQuery :) -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
        <!-- jQuery Modal -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
        <script type="text/javascript" src="jsVista/menu_t_servicio.js"></script>
    </body>
</html>

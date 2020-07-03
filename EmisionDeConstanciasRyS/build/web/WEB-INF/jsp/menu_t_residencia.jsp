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
            <h1>Trámite Residencia Social</h1>
            <div class="margen2">
                <div class="margen3">
                    <h3>Proceso</h3>
                </div>
            </div>
            <div class="margen3_1">
                <table>
                    <tr>
                        <th>Pasos</th>
                        <th>Entrega</th>
                        <th>Descargar/Ver</th>
                        <th>Estado</th>
                    </tr>
                    <c:if test = "${tamAr2>=0}">
                        <c:forEach var = "i" begin = "0" end = "${tamAr2}">
                            <tr>                    
                                <td>${listar2[i].tipoTramite}</td>
                                <td>${listar2[i].fechaEntrega}</td>
                                <c:set var="clas" value="btn-two"/>
                                <c:if test = "${(i%2) == 0}">
                                    <c:set var="clas" value="btn-one"/>
                                </c:if>
                                <td>    
                                    <a class="${clas}" href="${listar2[i].descargaDoc}"><i class="fas fa-file-download"></i></a>
                                    <!--inicio llamada modal-->
                                    <a class="${clas}" href="${listar2[i].vistaDoc}" target="_blank"><i class="fas fa-eye"></i></a>
                                    <!--fin llamada modal-->
                                </td>
                                <td id="etiqueta${i}">${listar2[i].estado}</td>
                            </tr>
                        </c:forEach>
                    </c:if>
                </table>
            </div>
        </div>
        <h1 id="tam" style="font-size:0px;"><c:out value = "${tamAr2}"/></h1>  
        <script type="text/javascript" src="jsVista/menu_t_servicio.js"></script>
        <!-- Remember to include jQuery :) -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    </body>
</html>

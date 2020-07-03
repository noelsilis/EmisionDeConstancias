<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <link rel="stylesheet" href="https://kit-free.fontawesome.com/releases/latest/css/free.min.css" media="all">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"> 
        <link rel="shortcut icon" href="imgVista/ico.png">
        <link rel="stylesheet" href="cssVista/especialidades.css" type="text/css">
        <meta content="text/html; charset=UTF-8">
        <title>Especialidades</title>
    </head>
    <body>
        <div class="margen1">
            <h1>Trámite Servicio Social</h1>
            <div class="margen2">
                <div class="margen3"><h3>Especialidades disponibles</h3></div>
            </div>
            <div class="margen3_1">
                <table>
                    <tr>
                        <th>Especialidad</th>
                        <th>Trámite</th>
                        <th><a href="agregarTramite.htm" arget="contenedorIFrame" class="btn btn-danger"><i class="fas fa-plus"></i></a></th>
                    </tr>
                    <c:forEach var = "i" begin = "0" end = "${tamEsp}">
                        <tr>
                            <td>${listaEsp[i].Especialidad}</td>
                            <c:set var="clas" value="btn-two"/>
                            <c:if test = "${(i%2) == 0}">
                                <c:set var="clas" value="btn-one"/>
                            </c:if>
                            <td><a href="adminServicio.htm?sp=${i}" arget="contenedorIFrame" class="${clas}"><i class="fas fa-folder-open"></i></a></td>
                            <td></td>
                        </tr>
                    </c:forEach>
                </table>
            </div>
        </div>

    </body>
</html>
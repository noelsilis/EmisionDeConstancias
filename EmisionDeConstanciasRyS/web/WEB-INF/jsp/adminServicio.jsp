<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="imgVista/ico.png">
        <link rel="stylesheet" href="cssVista/datosAlumnos.css" type="text/css">
        <!-- JQUEERY-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <!-- FRAMEWORK BOOTSTRAP para etilo de la pagina-->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">      
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.11/css/solid.css">
        <script src="https://use.fontawesome.com/releases/v5.0.11/js/all.js"></script>
    </head>
    <title>Tramite Servicio</title>
</head>
<body>
    <!--<input type="checkbox" id="check">-->
    <div class="margen1">
        <h1>Trámite Servicio Social</h1>
        
        <div class="margen2">
            <form class="col-12">
                <div class="form-group" id="buscar">
                    <input class="form-control"  id="myInput" type="text" placeholder="Buscar..."/>              
                </div>
            </form>
        </div>
        <div class="margen3_1">
            <table>
                <tr>
                    <th>id</th>
                    <th>Tramite</th>
                    <th>Estado</th>
                    <th>Entrega</th>
                    <th>NoControl</th>
                    <th><a href="#" arget="contenedorIFrame" class="btn btn-danger"><i class="fas fa-plus"></i></a></th>
                </tr>
                <tbody id="myTable">
                    <c:if test = "${tamTra>=0}">
                        <c:forEach var = "i" begin = "0" end = "${tamTra}">
                            <tr>                    
                                <td>${tmp[i].idtramites}</td>
                                <td>${tmp[i].tipoTramite}</td>
                                <td id="etiqueta${i}">${tmp[i].estado}</td>
                                <td>${tmp[i].fechaEntrega}</td>
                                <td>${tmp[i].NoControl}</td>
                                <td>
                                    <a href="#?id=${tmp[i].idtramites}" arget="contenedorIFrame" class="btn btn-info"><i class="fas fa-edit"></i></a>
                                    <a href="borrarS.htm?id=${tmp[i].idtramites}"class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>
                </tbody>
            </table>
        </div>
    </div>
    <h1 id="tam" style="font-size:0px;"><c:out value = "${tamTra}"/></h1>  
    <script type="text/javascript" src="jsVista/menu_t_servicio.js"></script>
    <!-- Remember to include jQuery :) -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#myInput").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#myTable tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
</body>
</html>

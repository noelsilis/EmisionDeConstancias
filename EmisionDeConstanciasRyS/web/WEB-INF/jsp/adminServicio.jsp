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
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    </head>
    <title>Tramite Servicio</title>
</head>
<body>
    <!--<input type="checkbox" id="check">-->
    <div class="margen1">
        <h1>Trámite Servicio Social</h1>
        <div class="margen2">
            <input class="form-control" id="myInput" type="text" placeholder="Buscar..">
        </div>
        <div class="margen3_1">
            <table>
                <tr>
                    <th>Matricula</th>
                    <th>Apellido Paterno</th>
                    <th>Apellido Materno</th>
                    <th>Nombre(s)</th>
                    <th>Especialidad</th>
                </tr>
                <tbody id="myTable">
                    <c:if test = "${tamAr>=0}">
                        <c:forEach var = "i" begin = "0" end = "${tamAr}">
                            <tr>                    
                                <td>${listar[i].NoControl}</td>
                                <td>${listar[i].APaterno}</td>
                                <td>${listar[i].AMaterno}</td>
                                <td>${listar[i].Nombres}</td>
                                <td>${listar[i].Especialidad}</td>
                            </tr>
                        </c:forEach>
                    </c:if>
                </tbody>
            </table>
        </div>
    </div>
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

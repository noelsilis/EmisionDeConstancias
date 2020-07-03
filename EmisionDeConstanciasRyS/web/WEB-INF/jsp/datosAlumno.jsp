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
        <h1>Datos de los Alumnos</h1>
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
                    <th>Matricula</th>
                    <th>Ap Paterno</th>
                    <th>Ap Materno</th>
                    <th>Nombre(s)</th>
                    <th>Especialidad</th>
                    <th></th>
                    <th></th>
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
                                <td>
                                    <!--<a href="editarAlumno.htm" class="btn btn-primary"><i class="fas fa-edit"></i></a>-->
                                    <a href="editarAlumno.htm?id=${listar[i].NoControl}" class="btn btn-primary"><i class="fas fa-edit"></i></a>
                                </td>
                                <td>
                                    <a href="delete.htm?id=${listar[i].NoControl}" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
                                </td>
                            </c:forEach>
                        </c:if>
                </tbody>
            </table>
        </div>
        <!--Inicio modal-->
        <div class="modal fade" id="modal1">
            <!--modal-lg: sirve para cambiar el tamaño del modal-->
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Editar datos del alumno(a)</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            &times;
                        </button>
                    </div>
                    <div class="modal-body">
                        <div>
                            <iframe name="iframeContenedor" src="" width="400" height="400" style="border: none;"></iframe>
                        </div>
                        <!--form-->
                        <!--fin form-->

                    </div>
                    <!--<div class="modal-footer">
                        <button type="button" class="btn-cerrar" data-dismiss="modal">Cerrar</button>
                        <input type="submit" value="Actualizar" class="btn-act" >
                    </div>-->
                </div>
            </div>
        </div>
        <!--Fin modal-->
    </div>
    <!-- JS, Popper.js, and jQuery -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
    crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
            integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
    crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
            integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
    crossorigin="anonymous"></script>
    <!--js-->
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
</html
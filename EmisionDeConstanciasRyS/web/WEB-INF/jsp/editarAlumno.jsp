<%-- 
    Document   : editar
    Created on : 18/01/2020, 09:38:39 PM
    Author     : Alejandro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <title>Crud</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Edtar Registro</h4>
                </div>
                <div class="card-body">
                    <form  method="POST">
                        <label>No.Control</label>
                        <input type="text" name="Matricula" class="form-control" value="${tmp[0].NoControl}">
                        <label>Nombres</label>
                        <input type="text" name="Nombre" class="form-control" value="${tmp[0].Nombres}">
                        <label>APaterno</label>
                        <input type="text" name="APaterno" class="form-control" value="${tmp[0].APaterno}">
                        <label>AMaterno</label>
                        <input type="text" name="AMaterno" class="form-control" value="${tmp[0].AMaterno}">
                        <label>Especialidad</label>
                        <input type="text" name="Especialidad" class="form-control" value="${tmp[0].Especialidad}">
                        <label>Email</label>
                        <input type="text" name="Email" class="form-control" value="${tmp[0].Email}">
                        <input type="submit" value="Actualizar" class="btn btn-success" >
                        <a href="datosAlumno.htm" arget="contenedorIFrame" >Regrsar</a>
                    </form> 
                </div>
            </div>
        </div>
    </body>
</html>

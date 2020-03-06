
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">      
        <title>Loginr</title>
    </head>
    <body>
        <div class="container mt-4 col-lg-4">
            <div class="card border-info">
                <div class="card-header bg-info">
                    <h4>Login</h4>
                </div>
                <div class="card-body">
                    <form method="POST">
                        <label>Matricula</label>
                        <input type="text" name="nombres" class="form-control">
                        <label>Contraseña</label>
                        <input type="text" name="correo" class="form-control">
                        <a href="#" class="btn btn-warning">Iniciar sesión</a>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>

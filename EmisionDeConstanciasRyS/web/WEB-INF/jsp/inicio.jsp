<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html lang="en" xmlns:th="http://www.thymeleaf.org" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Nuevo</title>
        <link rel="shortcut icon" href="imgVista/ico.png">
        <link rel="stylesheet" type="text/css" href="cssVista/inicio.css">
        <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
        <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        <link rel="stylesheet" href="https://kit-free.fontawesome.com/releases/latest/css/free.min.css" media="all">
    </head>
    <body>

        <input type="checkbox" id="check">
        <!--header area start-->
        <header>
            <label for="check">
                <i class="fas fa-bars" id="sidebar_btn"></i>
            </label>
            <div class="logo">
                <a href="http://www.itsoeh.edu.mx/" target="_blank"><img src="imgVista/logoITSOEHBlanco.png" class="itsoeh"></a>
            </div>
            <div class="right_area">
                <a href="index.htm" class="logout_btn">Salir</a>
                <a href="https://www.facebook.com/ITSOEH-P%C3%A1gina-Oficial-142983839177483/?ti=as" class="sidebar_fb" target="_blank"><i class="fab fa-facebook-f"></i></a>
                <a href="https://twitter.com/ITSOEHmx" class="sidebar_tw" target="_blank"><i class="fab fa-twitter"></i></a>
            </div>
        </header>
        <!--header area end-->
        <!--sidebar start-->
        <div class="sidebar">
            <center>
                <img src="imgVista/Lobo.jpg" class="profile_image" alt="">
                <c:forEach var="dato" items="${lista}">
                    <h4>${dato.Nombres}</h4>
                </c:forEach>
            </center>
            <!--Para agregar nuevas paginas, solo debes poner el target y su nombre corresppondiente-->
            <ul>
                <li><a class="tramites-btn"><i class="fas fa-chevron-down"></i><span class="first">Trámites</span></a>
                    <ul class="tramites-show">
                        <li><a href="menu_t_servicio.htm" target="contenedorIFrame"><i class="fas fa-universal-access"></i><span>Servicio</span></a></li>
                        <li><a href="#"><i class="fas fa-people-arrows"></i><span>Residencia</span></a></li>
                    </ul>
                </li>
            </ul>
            <!--<center>
                <h3>
                    Dirección:
                    Paseo del Agrarismo 2000.
                    Carr. Mixquiahuala - Tula, km 2.5
                    Mixquiahuala de Juárez, Hidalgo, C.P. 42700
                </h3>
            </center>-->
        </div>
        <!--sidebar end-->

        <!--inicio script: Muestra submenus y mantienene una opción en el menu estaticamente-->
        <script type="text/javascript" src="jsVista/inicio.js"></script>
        <!--fin del script-->
        <!--Inicio contenedor: Este es el contenedor en donde se llamara a las paginas que invoques en el menu-->
        <div class="content">
            <iframe name="contenedorIFrame" src="" id="contenido"></iframe>
        </div>
        <!--fin contenedor-->


    </body>
</html>

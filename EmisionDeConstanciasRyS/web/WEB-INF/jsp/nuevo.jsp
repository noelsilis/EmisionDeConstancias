<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<html lang="en" xmlns:th="http://www.thymeleaf.org" dir="ltr">
    <head>
        <meta charset="utf-8">
        <title>Nuevo</title>
        <link rel="shortcut icon" href="imgVista/ico.png">
        <link rel="stylesheet" type="text/css" href="cssVista/nuevo.css">
        <link rel="stylesheet" href="https://kit-free.fontawesome.com/releases/latest/css/free.min.css" media="all">
    </head>
    <body>

        <input type="checkbox" id="check">
        <!--header area start-->
        <header>
            <label for="check">
                <i class="fas fa-bars" id="sidebar_btn"></i>
                <i class="fab fa-facebook-f" id="sidebar_fb"></i>
                <i class="fab fa-twitter" id="sidebar_tw"></i>
            </label>
            <div class="logo">
                <img src="imgVista/logoITSOEHBlanco.png" class="itsoeh">
            </div>
            <div class="right_area">
                <a href="#" class="logout_btn">Salir</a>
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
            <a href="index.htm" target="contenedorIFrame"><i class="fas fa-archive"></i><span>Trámites</span></a>
            <a href="#"><i class="fas fa-chalkboard-teacher"></i><span>Mis trámites</span></a>
            <a href="#"><i class="fas fa-people-arrows"></i><span>Presencial</span></a>
            <a href="#"><i class="fas fa-desktop"></i><span>Iniciar en línea</span></a>
            <a href="#"><i class="fas fa-door-open"></i><span>Hacer en línea</span></a>
            <a href="#"><i class="fas fa-universal-access"></i><span>Todos</span></a>
        </div>
        <!--sidebar end-->
        <!--Este es el contenedor en donde se llamara a las paginas que invoques en el menu-->
        <div class="content">
            <iframe name="contenedorIFrame" src="" id="contenido"></iframe>
        </div>

        }

    </body>
</html>

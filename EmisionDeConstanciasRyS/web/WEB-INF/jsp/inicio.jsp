<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en"><head>
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="theme-color" content="#000000">
        <link rel="manifest" href="https://ruts.hidalgo.gob.mx/manifest.json">
        <link rel="shortcut icon" href="https://ruts.hidalgo.gob.mx/favicon.ico">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">    
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,600" rel="stylesheet">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>       
        <script type="text/javascript">
            function makeid(length) {
            var result = '';
            var characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
            var charactersLength = characters.length;
            for (var i = 0; i < length; i++) {
            result += characters.charAt(Math.floor(Math.random() * charactersLength));
            }
            return result;
            }
            $(() => {
            var __unique__ = window.localStorage.getItem("__unique__");
            if (!__unique__){
            __unique__ = makeid(10);
            window.localStorage.setItem("__unique__", __unique__);
            }

            var cookie__unique__ = Cookies.get('__unique__');
            if (!cookie__unique__ || cookie__unique__ === ""){
            Cookies.set('__unique__', __unique__, { expires: 365  });
            }
            });
        </script>
        <title>RUTS</title>
        <link rel="stylesheet" type="text/css" href="vistaInicio/css/headergob.css">
        <style type="text/css">
            .fa,.far,.fas{font-family:"Font Awesome 5 Free" !important}
        </style>
    </head>
    <body class="ig_laptop">


        <div id="headergob" only-headers="true" size="10"><div><div style="margin-top: 108px;"></div>
                <div class="hero-section">
                    <div class="container container-nav nav-color">
                        <div class="navgob">
                            <nav class="navbar navbar-expand-lg navbar-dark bg-dark nav-cal firstnav">
                                <div class="container" style="padding: 10px;">
                                    <a href="http://www.hidalgo.gob.mx/" class="navbar-brand gobbrand" title="Ir a la página inicial"><img alt="gob.mx" src="http://cdn.hidalgo.gob.mx/logo_gobhidalgo.svg"></a>
                                    <button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                                        <ul class="navbar-nav">
                                            <li class="nav-item active"><a class="nav-link"> <span>Gobierno</span></a><a class="arrow-down-menu"><svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-caret-down fa-w-10 fa-3x"><path fill="currentColor" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z" class=""></path></svg></a></li>
                                            <li class="nav-item active"><a class="nav-link"> <span>Trámites y Servicios</span></a><a class="arrow-down-menu"><svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-caret-down fa-w-10 fa-3x"><path fill="currentColor" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z" class=""></path></svg></a></li>
                                            <li class="nav-item active"><a class="nav-link"> <span>Hidalgo Travel</span></a><a class="arrow-down-menu"><svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-caret-down fa-w-10 fa-3x"><path fill="currentColor" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z" class=""></path></svg></a></li>
                                            <li class="nav-item active"><a class="nav-link"> <span>Transparencia</span></a><a class="arrow-down-menu"><svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-caret-down fa-w-10 fa-3x"><path fill="currentColor" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z" class=""></path></svg></a></li>
                                            <li class="nav-item active"><a class="nav-link"> <span>Buzón Ciudadano</span></a><a class="arrow-down-menu"><svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-caret-down fa-w-10 fa-3x"><path fill="currentColor" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z" class=""></path></svg></a></li>
                                            <li class="nav-item active"><a class="nav-link"><svg style="display: inline-block; vertical-align: top;" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50"><path class="engraneicon" d="M 22.205078 2 A 1.0001 1.0001 0 0 0 21.21875 2.8378906 L 20.246094 8.7929688 C 19.076509 9.1331971 17.961243 9.5922728 16.910156 10.164062 L 11.996094 6.6542969 A 1.0001 1.0001 0 0 0 10.708984 6.7597656 L 6.8183594 10.646484 A 1.0001 1.0001 0 0 0 6.7070312 11.927734 L 10.164062 16.873047 C 9.583454 17.930271 9.1142098 19.051824 8.765625 20.232422 L 2.8359375 21.21875 A 1.0001 1.0001 0 0 0 2.0019531 22.205078 L 2.0019531 27.705078 A 1.0001 1.0001 0 0 0 2.8261719 28.691406 L 8.7597656 29.742188 C 9.1064607 30.920739 9.5727226 32.043065 10.154297 33.101562 L 6.6542969 37.998047 A 1.0001 1.0001 0 0 0 6.7597656 39.285156 L 10.648438 43.175781 A 1.0001 1.0001 0 0 0 11.927734 43.289062 L 16.882812 39.820312 C 17.936999 40.39548 19.054994 40.857928 20.228516 41.201172 L 21.21875 47.164062 A 1.0001 1.0001 0 0 0 22.205078 48 L 27.705078 48 A 1.0001 1.0001 0 0 0 28.691406 47.173828 L 29.751953 41.1875 C 30.920633 40.838997 32.033372 40.369697 33.082031 39.791016 L 38.070312 43.291016 A 1.0001 1.0001 0 0 0 39.351562 43.179688 L 43.240234 39.287109 A 1.0001 1.0001 0 0 0 43.34375 37.996094 L 39.787109 33.058594 C 40.355783 32.014958 40.813915 30.908875 41.154297 29.748047 L 47.171875 28.693359 A 1.0001 1.0001 0 0 0 47.998047 27.707031 L 47.998047 22.207031 A 1.0001 1.0001 0 0 0 47.160156 21.220703 L 41.152344 20.238281 C 40.80968 19.078827 40.350281 17.974723 39.78125 16.931641 L 43.289062 11.933594 A 1.0001 1.0001 0 0 0 43.177734 10.652344 L 39.287109 6.7636719 A 1.0001 1.0001 0 0 0 37.996094 6.6601562 L 33.072266 10.201172 C 32.023186 9.6248101 30.909713 9.1579916 29.738281 8.8125 L 28.691406 2.828125 A 1.0001 1.0001 0 0 0 27.705078 2 L 22.205078 2 z M 23.056641 4 L 26.865234 4 L 27.861328 9.6855469 A 1.0001 1.0001 0 0 0 28.603516 10.484375 C 30.066026 10.848832 31.439607 11.426549 32.693359 12.185547 A 1.0001 1.0001 0 0 0 33.794922 12.142578 L 38.474609 8.7792969 L 41.167969 11.472656 L 37.835938 16.220703 A 1.0001 1.0001 0 0 0 37.796875 17.310547 C 38.548366 18.561471 39.118333 19.926379 39.482422 21.380859 A 1.0001 1.0001 0 0 0 40.291016 22.125 L 45.998047 23.058594 L 45.998047 26.867188 L 40.279297 27.871094 A 1.0001 1.0001 0 0 0 39.482422 28.617188 C 39.122545 30.069817 38.552234 31.434687 37.800781 32.685547 A 1.0001 1.0001 0 0 0 37.845703 33.785156 L 41.224609 38.474609 L 38.53125 41.169922 L 33.791016 37.84375 A 1.0001 1.0001 0 0 0 32.697266 37.808594 C 31.44975 38.567585 30.074755 39.148028 28.617188 39.517578 A 1.0001 1.0001 0 0 0 27.876953 40.3125 L 26.867188 46 L 23.052734 46 L 22.111328 40.337891 A 1.0001 1.0001 0 0 0 21.365234 39.53125 C 19.90185 39.170557 18.522094 38.59371 17.259766 37.835938 A 1.0001 1.0001 0 0 0 16.171875 37.875 L 11.46875 41.169922 L 8.7734375 38.470703 L 12.097656 33.824219 A 1.0001 1.0001 0 0 0 12.138672 32.724609 C 11.372652 31.458855 10.793319 30.079213 10.427734 28.609375 A 1.0001 1.0001 0 0 0 9.6328125 27.867188 L 4.0019531 26.867188 L 4.0019531 23.052734 L 9.6289062 22.117188 A 1.0001 1.0001 0 0 0 10.435547 21.373047 C 10.804273 19.898143 11.383325 18.518729 12.146484 17.255859 A 1.0001 1.0001 0 0 0 12.111328 16.164062 L 8.8261719 11.46875 L 11.523438 8.7734375 L 16.185547 12.105469 A 1.0001 1.0001 0 0 0 17.28125 12.148438 C 18.536908 11.394293 19.919867 10.822081 21.384766 10.462891 A 1.0001 1.0001 0 0 0 22.132812 9.6523438 L 23.056641 4 z M 25 17 C 20.593567 17 17 20.593567 17 25 C 17 29.406433 20.593567 33 25 33 C 29.406433 33 33 29.406433 33 25 C 33 20.593567 29.406433 17 25 17 z M 25 19 C 28.325553 19 31 21.674447 31 25 C 31 28.325553 28.325553 31 25 31 C 21.674447 31 19 28.325553 19 25 C 19 21.674447 21.674447 19 25 19 z"></path></svg> <span>Accesibilidad</span></a><a class="arrow-down-menu"><svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-caret-down fa-w-10 fa-3x"><path fill="currentColor" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z" class=""></path></svg></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                            <nav class="navbar navbar-expand-lg navbar-dark bg-dark secondnav secondnavblue">
                                <div class="container" style="padding: 0px 8px 0px 15px;">
                                    <a href="https://ruts.hidalgo.gob.mx/" class="navbar-brand gobbrand" title="Ir a la página inicial">
                                        <div>RUTS ITSOEH PAGINA DEL ADMINISTRADOR</div>
                                    </a>
                                    <button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown2" aria-controls="navbarNavDropdown2" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                                        <ul class="navbar-nav">
                                            <li class="nav-item active"><a class="nav-link"> <span>Mis Trámites</span></a><a class="arrow-down-menu"><svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-caret-down fa-w-10 fa-3x"><path fill="currentColor" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z" class=""></path></svg></a></li>
                                            <li class="nav-item active"><a class="nav-link"> <span>Más servicios</span></a><a class="arrow-down-menu"><svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-caret-down fa-w-10 fa-3x"><path fill="currentColor" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z" class=""></path></svg></a></li>
                                            <li class="nav-item active"><a class="nav-link"> <span>Contacto</span></a><a class="arrow-down-menu"><svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-caret-down fa-w-10 fa-3x"><path fill="currentColor" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z" class=""></path></svg></a></li>
                                            <li class="nav-item active"><a class="nav-link"> <span>Administración</span></a><a class="arrow-down-menu"><svg aria-hidden="true" focusable="false" data-prefix="fas" data-icon="caret-down" role="img" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 320 512" class="svg-inline--fa fa-caret-down fa-w-10 fa-3x"><path fill="currentColor" d="M31.3 192h257.3c17.8 0 26.7 21.5 14.1 34.1L174.1 354.8c-7.8 7.8-20.5 7.8-28.3 0L17.2 226.1C4.6 213.5 13.5 192 31.3 192z" class=""></path></svg></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="fab">
                    <span class="fab-action-button"><i class="fab-action-button__icon"></i></span>
                    <ul class="fab-buttons">
                        <li class="fab-buttons__item"><a class="fab-buttons__link" data-tooltip="Buzón Ciudadano"><i class="icon-material icon-material_buzon"></i></a></li>
                        <li class="fab-buttons__item"><a href="https://ruts.hidalgo.gob.mx/" class="fab-buttons__link" data-tooltip="Trámites y Servicios" target="_blank"><i class="icon-material icon-material_ruts"></i></a></li>
                        <li class="fab-buttons__item"><a href="#chat" class="fab-buttons__link" data-tooltip="Chat en Linea" target="_blank"><i class="icon-material icon-material_tw"></i></a></li>
                        <li class="fab-buttons__item"><a href="https://ruts.hidalgo.gob.mx/" class="fab-buttons__link" data-tooltip="Facebook" target="_blank"><i class="icon-material icon-material_fb"></i></a></li>
                        <li class="fab-buttons__item"><a href="https://ruts.hidalgo.gob.mx/" class="fab-buttons__link" data-tooltip="Twitter" target="_blank"><i class="icon-material icon-material_tw"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            window.$ = $;
            window.classNames = classNames;
        </script>
        <div id="root"></div><link rel="stylesheet" type="text/css" href="vistaInicio/css/inicio.css">

    <div class="container" id="Inicio">
        <div class="row">
            <div class="col-12" style="padding-top: 20px;">
                <h3 class="title-leyend">Encuentra el trámite o servicio que estás buscando.</h3><br>
                <p class="desc-leyend"></p><br>
            </div>
        </div>
        <div class="row">
            <div class="col-12" style="padding-top: 20px;">
                <input placeholder="Escribe el nombre completo o parcial del trámite o servicio que buscas" id="search">
                <i class="searchicon" id="onsearch">
                    <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 50 50" version="1.1" width="50px" height="50px">
                        <g id="surface1">
                            <path d="M 21 3 C 11.601563 3 4 10.601563 4 20 C 4 29.398438 11.601563 37 21 37 C 24.355469 37 27.460938 36.015625 30.09375 34.34375 L 42.375 46.625 L 46.625 42.375 L 34.5 30.28125 C 36.679688 27.421875 38 23.878906 38 20 C 38 10.601563 30.398438 3 21 3 Z M 21 7 C 28.199219 7 34 12.800781 34 20 C 34 27.199219 28.199219 33 21 33 C 13.800781 33 8 27.199219 8 20 C 8 12.800781 13.800781 7 21 7 Z "></path>
                        </g>
                    </svg>
                </i>
            </div>
        </div>
        <div class="row" style="padding-top: 20px;">
            <div class="col-6">
                <div class="form-group">
                    <label class="boldg">A quién va dirigido</label>
                    <select class="form-control" id="tematicoSel">
                        <option value="" selected="selected">Todas</option>

                        <option value="Economía">Economía</option>

                        <option value="Educación">Educación</option>

                        <option value="Familia">Familia</option>

                        <option value="Jóvenes">Jóvenes</option>

                        <option value="Mujer">Mujer</option>

                        <option value="Salud">Salud</option>

                        <option value="Turismo">Turismo</option>

                    </select>
                </div>
            </div>

        </div>

        <div class="row" style="padding-top: 20px;">
            <div class="col-md-3 col-sm-12 col-12">
                <label class="boldg">¿Qué quieres hacer?</label><br>
                <button class="buttontab " id="tipoServicio" onclick="javascript: changeQuery('tipo', 'Servicio')">Servicio</button>
                <button class="buttontab " id="tipoTrámite" onclick="javascript: changeQuery('tipo', 'Trámite')">Trámite</button>
                <button class="buttontab " id="tipo" onclick="javascript: changeQuery('tipo', '')">Todos</button>
                <label class="boldg">Canal de atención</label><br>
                <button class="buttontab " id="tipoInformativo" onclick="javascript: changeQuery('nivel', 'Informativo')">Presencial <i class="fas fa-walking"></i></button>
                <button class="buttontab " id="tipoDeinicio" onclick="javascript: changeQuery('nivel', 'De inicio')">Iniciar en línea <i class="fas fa-mouse-pointer"></i></button>
                <button class="buttontab " id="tipoTransaccional" onclick="javascript: changeQuery('nivel', 'Transaccional')">Hacer en línea <i class="fas fa-wifi" style="margin-right: -6px;"></i></button>
                <button class="buttontab " id="tipo" onclick="javascript: changeQuery('nivel', '')">Todos</button>
            </div>
            <div class="col-md-9 col-sm-12 col-12">
                <div class="container">
                    <h3>Bienvenido</h3>
                    <p>Aqui podras tramitar diversos papeles y constancias desde la comodidad de tu casa</p>
                    <p>#ORGULLO_ITSOEH </p>
                    <div id="demo" class="carousel slide" data-ride="carousel">

                        <!-- Indicators -->
                        <ul class="carousel-indicators">
                            <li data-target="#demo" data-slide-to="0" class="active"></li>
                            <li data-target="#demo" data-slide-to="1"></li>
                            <li data-target="#demo" data-slide-to="2"></li>
                            <li data-target="#demo" data-slide-to="3"></li>
                        </ul>

                        <!-- The slideshow -->
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="vistaInicio/img/face.jpg" alt="Los Angeles" width="100%" height="370">
                                <div class="carousel-caption">
                                    <h3>Facebook</h3>
                                    <p>ITSOEH pagina oficial</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="vistaInicio/img/you.jpg" alt="Chicago" width="100%" height="370">
                                <div class="carousel-caption">
                                    <h3>Entraga de</h3>
                                    <p>Titulos y cedulas</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="vistaInicio/img/3.jpg" alt="New York" width="100%" height="370" >
                                <div class="carousel-caption">
                                    <h3>#ORGULLO</h3>
                                    <p>ITSOEH</p>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="vistaInicio/img/or.jpg" alt="New York" width="100%" height="370">
                                <div class="carousel-caption">
                                    <h3>Se parte</h3>
                                    <p>de nosotros</p>
                                </div>
                            </div>
                        </div>

                        <!-- Left and right controls -->
                        <a class="carousel-control-prev" href="#demo" data-slide="prev">
                            <span class="carousel-control-prev-icon"></span>
                        </a>
                        <a class="carousel-control-next" href="#demo" data-slide="next">
                            <span class="carousel-control-next-icon"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript">

        function changeQuery(key, value) {
        var url = window.location.href;
        var baseUrl = url.split('?')[0],
                urlQueryString = '?' + url.split('?')[1],
                newParam = key + '=' + value,
                params = '?' + newParam;
        if (urlQueryString) {
        var updateRegex = new RegExp('([\?&])' + key + '[^&]*');
        var removeRegex = new RegExp('([\?&])' + key + '=[^&;]+[&;]?');
        if (typeof value === 'undefined' || value === null || value === '') { // Remove param if value is empty
        params = urlQueryString.replace(removeRegex, "$1");
        params = params.replace(/[&;]$/, "");
        } else if (urlQueryString.match(updateRegex) !== null) { // If param exists already, update it
        params = urlQueryString.replace(updateRegex, "$1" + newParam);
        } else { // Otherwise, add it to end of query string
        params = urlQueryString + '&' + newParam;
        }
        }

        // no parameter was set so we don't need the question mark
        params = params === '?' ? '' : params;
        return window.location.href = baseUrl + params;
        }

        function getUrlParameter(name) {
        name = name.replace(/[\[]/, '\\[').replace(/[\]]/, '\\]');
        var regex = new RegExp('[\\?&]' + name + '=([^&#]*)');
        var results = regex.exec(location.search);
        return results === null ? '' : decodeURIComponent(results[1].replace(/\+/g, ' '));
        };
        function changeQueryMultipleSelector(key, newattrb) {
        values = "" || getUrlParameter(key);
        if (values != ""){
        values = values.split("|");
        } else{
        values = [];
        }

        var index = values.indexOf(newattrb);
        if (index == - 1){
        values.push(newattrb);
        } else{
        values.splice(index, 1);
        }
        values = values.join("|");
        changeQuery(key, values);
        }

        $("#onsearch").click(function() {
        changeQuery("text", $("#search").val());
        });
        $("#search").on('keypress', function(e) {
        if (e.which == 13) {
        changeQuery("text", $("#search").val());
        }
        });
        $("#categoriaSel").change(function() {
        var val = $(this).val();
        changeQuery("categoria", val);
        });
        $("#tematicoSel").change(function() {
        var val = $(this).val();
        changeQuery("tematico", val);
        });
        $("#entidadSel").change(function() {
        var val = $(this).val();
        changeQuery("entidad", val);
        });</script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
</body>
</html>
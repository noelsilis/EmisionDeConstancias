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
        <link rel="shortcut icon" href="imgVista/ico.png">
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
                if (!__unique__) {
                    __unique__ = makeid(10);
                    window.localStorage.setItem("__unique__", __unique__);
                }

                var cookie__unique__ = Cookies.get('__unique__');
                if (!cookie__unique__ || cookie__unique__ === "") {
                    Cookies.set('__unique__', __unique__, {expires: 365});
                }
            });
        </script>
        <title>Tramites ITSOEH</title>
        <link rel="stylesheet" type="text/css" href="vistaInicio/css/headergob.css">
        <link rel="stylesheet" type="text/css" href="cssVista/index.css">
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
                                <div class="container" style="padding: 1px;">
                                    <label></label><a href="http://www.itsoeh.edu.mx/"  title="Ir a la página oficial"><img src="imgVista/logo.png" width="40%"></a>
                                    <button class="navbar-toggler custom-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                                    <div class="collapse navbar-collapse" id="navbarNavDropdown">
                                        <ul class="navbar-nav">
                                            <li class="nav-item active"><a href="inicio.htm" class="nav-link"> <span>Inicio</span></a></li>
                                            <div class="dropdown">
                                                <a href="#" class="nav-link dropdown-toggle text-light" data-toggle="dropdown">Usuario</a>
                                                <div class="dropdown-menu text-center nav-color text-light">
                                                    <a><img src="imgVista/ico.png" width="50%"/></a><br>
                                                        <c:forEach var="dato" items="${lista}">
                                                        <label>${dato.NoControl}</label><br>
                                                        <label>${dato.APaterno}</label>
                                                        <label>${dato.AMaterno}</label><br>
                                                        <label>${dato.Nombres}</label><br>
                                                        <label>${dato.Email}</label>
                                                        <div class="dropdown-divider"></div>
                                                        <a class="dropdown-item text-light" href="index.htm">Salir</a>
                                                    </div>
                                                </div>
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
                    <h3 class="title-leyend text-light">Encuentra el trámite o servicio que estás buscando.</h3><br>
                </div>
            </div>
            <div class="row" style="padding-top: 10px;">
                <div class="col-md-3 col-sm-12 col-12 text-light">
                    <label class="boldg">¿Qué quieres hacer?</label><br>
                    <button class="buttontab " id="tipoServicio" onclick="javascript: changeQuery('tipo', 'Servicio')">Mis Trámites</button>
                    <a href="tramites.htm?mat=${dato.NoControl}"><button class="buttontab " >Trámites</button></a>
                    <button class="buttontab " id="tipo" onclick="javascript: changeQuery('tipo', '')">Contacto</button>
                    <label class="boldg">Canal de atención</label><br>
                    <button class="buttontab " id="tipoInformativo" onclick="javascript: changeQuery('nivel', 'Informativo')">Presencial <i class="fas fa-walking"></i></button>
                    <button class="buttontab " id="tipoDeinicio" onclick="javascript: changeQuery('nivel', 'De inicio')">Iniciar en línea <i class="fas fa-mouse-pointer"></i></button>
                    <button class="buttontab " id="tipoTransaccional" onclick="javascript: changeQuery('nivel', 'Transaccional')">Hacer en línea <i class="fas fa-wifi" style="margin-right: -6px;"></i></button>
                    <button class="buttontab " id="tipo" onclick="javascript: changeQuery('nivel', '')">Todos</button>
                </div>
            </c:forEach>
            <div class="col-md-9 col-sm-12 col-12">
                <div class="container text-light">
                    <h3>Bienvenido</h3>
                    <p>Aqui podras tramitar diversos papeles y constancias desde la comodidad de tu casa #ORGULLO_ITSOEH</p>
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
        }
        ;
        function changeQueryMultipleSelector(key, newattrb) {
            values = "" || getUrlParameter(key);
            if (values != "") {
                values = values.split("|");
            } else {
                values = [];
            }

            var index = values.indexOf(newattrb);
            if (index == -1) {
                values.push(newattrb);
            } else {
                values.splice(index, 1);
            }
            values = values.join("|");
            changeQuery(key, values);
        }

        $("#onsearch").click(function () {
            changeQuery("text", $("#search").val());
        });
        $("#search").on('keypress', function (e) {
            if (e.which == 13) {
                changeQuery("text", $("#search").val());
            }
        });
        $("#categoriaSel").change(function () {
            var val = $(this).val();
            changeQuery("categoria", val);
        });
        $("#tematicoSel").change(function () {
            var val = $(this).val();
            changeQuery("tematico", val);
        });
        $("#entidadSel").change(function () {
            var val = $(this).val();
            changeQuery("entidad", val);
        });</script>

    <!-- Global site tag (gtag.js) - Google Analytics -->
</body>
</html>
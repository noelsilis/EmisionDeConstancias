<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
                                                        <label>${dato.APaterno}</label>
                                                        <label>${dato.AMaterno}</label><br>
                                                        <label>${dato.Nombres}</label><br>
                                                        <label>${dato.Email}</label>
                                                    </c:forEach>
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
            <div class="accordion text-light" id="accordion2">
                <div class="accordion-group">
                    <div class="accordion-heading">
                        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion2" href="#collapseOne">
                            <font color="#180C9B"><b>Formatos Servicio Social</font> 
                        </a>
                    </div>
                    <div id="collapseOne" class="accordion-body collapse ">
                        <div class="accordion-inner ">
                            <ul>
                                Todos los alumnos inscritos en cualquiera de nuestros programas académicos que hayan acreditado el 70% de créditos acumulados. Deberás tener como premisa contribuir al desarrollo de la comunidad.
                            </ul>
                            <ul >
                                <a  href="http://www.itsoeh.edu.mx/front/documentos/Servicio/Formatos2020/P-DRSS-01-F-05 Solicitud de Servicio Social.docx" download=""><li>Solicitud de Servicio social </li></a>
                            </ul>

                            <ul>
                                <a href="http://www.itsoeh.edu.mx/front/documentos/Servicio/Formatos2020/P-DRSS-01-F-08 Guia para la carta de aceptacion de Servicio Social.docx" download=""><li>Guía para la carta de aceptación </li></a>
                            </ul>

                            <ul>
                                <a href="http://www.itsoeh.edu.mx/front/documentos/Servicio/Formatos2020/P-DRSS-01-F-09 Carta Compromiso de Servicio Social.docx" download=""><li>Carta Compromiso de Servicio Social </li></a>
                            </ul>

                            <ul>
                                <a href="http://www.itsoeh.edu.mx/front/documentos/Servicio/Formatos2020/P-DRSS-01-F-10 Registro de Servicio Social.docx" download=""><li>Registro de Servicio Social </li></a>
                            </ul>

                            <ul>
                                <a href="http://www.itsoeh.edu.mx/front/documentos/Servicio/Formatos2020/P-DRSS-01-F-13 Reporte Bimestral de Servicio Social.docx" download=""><li>Reporte Bimestral de Servicio Social </li></a>
                            </ul>

                            <ul>
                                <a href="http://www.itsoeh.edu.mx/front/documentos/Servicio/Formatos2020/P-DRSS-01-F-14 Formato de evaluacion cualitativa del prestador  de Servicio Social.docx" download=""><li>Formato de evaluación cualitativa del  prestador de Servicio Social </li></a>
                            </ul>

                            <ul>
                                <a href="http://www.itsoeh.edu.mx/front/documentos/Servicio/Formatos2020/P-DRSS-01-F-15 Formato de autoevaluacion cualitativa del prestador  de Servicio Social.docx" download=""><li>Formato de autoevaluación cualitativa del prestador de Servicio Social </li></a>
                            </ul>

                            <ul>
                                <a href="http://www.itsoeh.edu.mx/front/documentos/Servicio/Formatos2020/P-DRSS-01-F-16 Formato de evaluacion de las actividades del prestador  de Servicio Social.docx" download=""><li>Formato de evaluación de las actividades del prestador de Servicio Social </li></a>
                            </ul>

                            <ul>
                                <a href="http://www.itsoeh.edu.mx/front/documentos/Servicio/Formatos2020/P-DRSS-01-F-18 Conclusiones del Servicio Social.docx" download=""><li>Conclusiones de Servicio Social </li></a>
                            </ul>

                            <ul>
                                <a href="http://www.itsoeh.edu.mx/front/documentos/Servicio/Formatos2020/P-DRSS-01-F-19 Guia para la carta de terminacion de Servicio Social.docx" download=""><li>Guía para la carta de terminación de Servicio Social </li></a>
                            </ul>

                            </b>
                        </div>
                    </div>
                </div>
            </div>
        </div>     
    </body>
</html>

//inicio animación submenu down-up
$('.tramites-btn').click(function () {
    $('div ul .tramites-show').toggleClass("show");
    $('div ul .first').toggleClass("rotate");
});
$('.datos-alumnos-btn').click(function () {
    $('div ul .mistramites-show').toggleClass("show1");
    $('div ul .second').toggleClass("rotate");
});
$('.configuracion-btn').click(function () {
    $('div ul .mistramites-show').toggleClass("show2");
    $('div ul .third').toggleClass("rotate");
});
//fin animación submenu down-up

//inicio opción seleccionada en el menu estatica 
$('div ul li').click(function () {
    $(this).addClass("active").siblings().removeClass("active");
});
//fin opción seleccionada en el menu estatica 

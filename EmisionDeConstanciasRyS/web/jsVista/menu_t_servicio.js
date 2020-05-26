(function () {
    setInterval(function () {
        /*Etiquetas de la tabla para cambiar el color a los estados
         * Va sin la llamada a .textContent ya que necesitamos la dirección de memoria para cambiar el color*/
        var e0 = document.getElementById("etiqueta0");
        var e1 = document.getElementById("etiqueta1");
        var e2 = document.getElementById("etiqueta2");
        var e3 = document.getElementById("etiqueta3");
        var e4 = document.getElementById("etiqueta4");
        var e5 = document.getElementById("etiqueta5");
        var e6 = document.getElementById("etiqueta6");
        var e7 = document.getElementById("etiqueta7");
        var e8 = document.getElementById("etiqueta8");
        var e9 = document.getElementById("etiqueta9");
        /*Arreglos*/
        etiqueta = [e0, e1, e2, e3, e4, e5, e6, e7, e8, e9];
        /*Importante el orden de los arreglos (colores y estados) ya que estan creados paralelamente al color que se asigna*/
        colores = ["#CD6155 ", "#F4D03F ", "#48C9B0"];
        estados = ["No iniciado", "En proceso", "Finalizado"];
        /*En los dos ciclos for que iteran a los estados y las etiquetas, comparando con un if
         * que el estado y la etiqueta sean iguales para poder realizar el cambio de color*/
        for (var i = 0; i < estados.length; i++) {
            for (var j = 0; j < etiqueta.length; j++) {
                if (estados[Math.floor(i)] == etiqueta[Math.floor(j)].textContent) {
                        etiqueta[Math.floor(j)].style.color = colores[Math.floor(i)];
                }
            }
        }
        

    }, 1000);
}())

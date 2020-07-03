(function () {
    setInterval(function () {
        /*Etiquetas de la tabla para cambiar el color a los estados
         * Va sin la llamada a .textContent ya que necesitamos la dirección de memoria para cambiar el color*/
        /*Arreglos*/
        var tam=document.getElementById("tam").textContent;
        etiqueta = new Array();
        for (var i = 0; i <= tam; i++) {
            etiqueta[i]=document.getElementById(("etiqueta"+i));
        }
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

function asignar() {
  var pwdnuevo = document.getElementById("cnueva").value;
  var pwdrec = document.getElementById("rcnueva").value;
  if(pwdnuevo==pwdrec){
      alert("correcto");
  }else{
      alert("incorrecto");
  }
}
////(function comparar(opc) {
//    setInterval(function () {
//
//        var pwdNuevo = document.getElementById("c-nueva").textContent;
//        console.log(pwdNuevo == opc);
//        if (pwdNuevo == opc) {
//            
//        }else{
//            alert("no son igualessssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
//        }
//    }, 1000);
//}())
//function comparar() {
//    var pwdNuevo = document.getElementById("c-nueva").textContent;
//    var pwdRepetir = document.getElementById("rc-nueva").textContent;
//    if (pwdNuevo == pwdRepetir) {
//        alert("si son iguales");
//    }else{
//        alert("no se arma bro");
//    }
//    
//    function validado(){
//        return pwdRepetir;
//    }
//}
//function operaciones(opcion) {
//
//    var num1 = parseFloat(document.getElementById("txt1").value);
//    var num2 = parseFloat(document.getElementById("txt2").value);
//    switch (opcion) {
//        case 'suma':
//            document.getElementById("txt3").value = calcularSuma();
//            break;
//        case 'resta':
//            document.getElementById("txt3").value = calcularResta();
//            break;
//        case 'multi':
//            document.getElementById("txt3").value = calcularMulti();
//            break;
//        case 'divi':
//            document.getElementById("txt3").value = calcularDivi();
//            break;
//        default:
//            break;
//    }
//    function calcularSuma() {
//        return num1 + num2;
//    }
//    function calcularResta() {
//        return num1 - num2;
//    }
//    function calcularMulti() {
//        return num1 * num2;
//    }
//    function calcularDivi() {
//        return num1 / num2;
//    }
//}
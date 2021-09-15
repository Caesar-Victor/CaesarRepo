function Converter(evento) {
    var valorElemento = parseFloat(document.getElementById("valor").value);
    var valorConvertido;
    var valorBtc = parseFloat(document.getElementById("valor").value) / 46913.3
    var elemento = document.getElementById("textoModificavel");
    var textoDeSaida;
    if (evento == "real") {
      valorConvertido = valorElemento * 5.3;
      textoDeSaida = "O resultado em real é: R$" + valorConvertido + "<br/> Valor em bitcoin: " + valorBtc 
      elemento.innerHTML = textoDeSaida;
    } else if (evento == "libra") {
      valorConvertido = valorElemento * 0.72;
      textoDeSaida = "O resultado em libras esterlinas é: £" + valorConvertido + "<br/> Valor em bitcoin: " + valorBtc 
      elemento.innerHTML = textoDeSaida;
    } else if (evento == "distancia"){
        valorConvertido = valorElemento * 1.057e-13
        textoDeSaida = "O resultado em anos-luz é: " + valorConvertido.toFixed(4);
        elemento.innerHTML = textoDeSaida;
    } else if (evento == "temperatura"){
        if (document.getElementById("c").checked){
            textoDeSaida = "celso"
            elemento.innerHTML = textoDeSaida;
        }else if(document.getElementById("f").checked){
            textoDeSaida = "jjuhifs"
            elemento.innerHTML = textoDeSaida;
        }else if(document.getElementById("k").checked){
            textoDeSaida = "kevin"
            elemento.innerHTML = textoDeSaida;
        }
    }
}
function Temperatura() {
    
}
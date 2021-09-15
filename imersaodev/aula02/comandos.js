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
            textoDeSaida = Celcius(valorElemento)
            elemento.innerHTML = textoDeSaida;
        }else if(document.getElementById("f").checked){
            textoDeSaida = Frht(valorElemento)
            elemento.innerHTML = textoDeSaida;
        }else if(document.getElementById("k").checked){
            textoDeSaida = Kelvin(valorElemento)
            elemento.innerHTML = textoDeSaida;
        }
    }
}
function Celcius(valor) {
    var texto = "";
    var valorFrht = 1.8*valor + 32
    var valorKevin = valor + 273.15
    if (document.getElementById("frht").checked){
        texto += "O valor em Fahrenheit é: "+valorFrht.toFixed(4)+"<br/>"
    }if (document.getElementById("kelvin").checked){
        texto += "O valor em Kelvin é: "+valorKevin.toFixed(4)+"<br/>"
    }if (document.getElementById("celcius")){
        texto += "O valor Celcius é: "+ valor
    }
    return texto
}
function Frht(valor) {
    var texto = "";
    var valorCelcius = (valor - 32) / 1.8
    var valorKevin = ((valor - 32) * (5/9)) + 273
    if (document.getElementById("celcius").checked){
        texto += "O valor em Celcius é: "+valorCelcius.toFixed(4)+"<br/>"
    }if (document.getElementById("kelvin").checked){
        texto += "O valor em Kelvin é: "+valorKevin.toFixed(4)+"<br/>"
    }if (document.getElementById("frht")){
        texto += "O valor Fahrenheit é: "+ valor
    }
    return texto
}
function Kelvin(valor) {
    var texto = "";
    var valorCelcius = valor - 273.15
    var valorFrht = ((valor - 273.15) * 1.8) + 32
    if (document.getElementById("frht").checked){
        texto += "O valor em Celcius é: "+valorCelcius.toFixed(4)+"<br/>"
    }if (document.getElementById("frht").checked){
        texto += "O valor em Fahrenheit é: "+valorFrht.toFixed(4)+"<br/>"
    }if (document.getElementById("kelvin")){
        texto += "O valor Kelvin é: "+ valor
    }
    return texto
}
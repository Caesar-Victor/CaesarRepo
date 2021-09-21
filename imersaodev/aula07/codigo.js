var carta1 = {
    nome: "yugi",
    atributos: {
        ataque: 7,
        defesa: 5,
        magia: 9
    }
}
var carta2 = {
    nome: "joey",
    atributos: {
        ataque: 8,
        defesa: 3,
        magia: 5
    }
}
var carta3 = {
    nome: "tea",
    atributos: {
        ataque: 3,
        defesa: 8,
        magia: 5
    }
}

var cartas = [carta1, carta2, carta3]

var cartaMaquina
var cartaJogador

function sortearCarta() {
    cartaMaquina = cartas[parseInt(Math.random() * 3)]
    cartaJogador = cartas[parseInt(Math.random() * 3)]
    document.getElementById("btnSortear").disabled = true
    document.getElementById("btnJogar").disabled = false
    exibirOpcoes()
}

function exibirOpcoes() {
    var opcoes = document.getElementById("opcoes")
    var texto = ""

    for (var atributo in cartaJogador.atributos) {
        texto += "<input type='radio' name='atributo' value='" + atributo + "'>" + atributo
    }
    opcoes.innerHTML = texto
}

function jogar() {
    var atributo = document.getElementsByName("atributo")
    var atributoSelecionado = ''
    atributo.forEach(function (e) {
        if (e.checked) {
            atributoSelecionado = e.value
        }
    })
    var resultado = document.getElementById("resultado")

    if (atributoSelecionado == '') {
        resultado.innerHTML = "Selecione um atributo"
    } else if (cartaJogador.atributos[atributoSelecionado] > cartaMaquina.atributos[atributoSelecionado]) {
        resultado.innerHTML = "Você venceu!!"
    } else if (cartaJogador.atributos[atributoSelecionado] == cartaMaquina.atributos[atributoSelecionado]) {
        resultado.innerHTML = "Empatou"
    } else {
        resultado.innerHTML = "Você perdeu!"
    }
}
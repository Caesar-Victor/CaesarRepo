var carta1 = {
    nome: "yugi",
    imagem: 'https://ms.yugipedia.com//c/c4/YamiYugi-DULI.png',
    atributos: {
        ataque: 7,
        defesa: 5,
        magia: 9
    }
}
var carta2 = {
    nome: "joey",
    imagem: 'https://static.wikia.nocookie.net/yugioh/images/0/0e/JoeyWheelerDT.png/revision/latest?cb=20190614194910',
    atributos: {
        ataque: 8,
        defesa: 3,
        magia: 5
    }
}
var carta3 = {
    nome: "tea",
    imagem: 'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/627fe721-846f-4f75-ac61-111ca00b27dd/de05j7r-f3afd08a-09e1-4c76-9867-b8031cb87528.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzYyN2ZlNzIxLTg0NmYtNGY3NS1hYzYxLTExMWNhMDBiMjdkZFwvZGUwNWo3ci1mM2FmZDA4YS0wOWUxLTRjNzYtOTg2Ny1iODAzMWNiODc1MjgucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.xgMNI1dGAxyhm9xWn4gysJ0kFOx0eliuxncOwUCi8_s',
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
    var jogador = parseInt(Math.random() * 3)
    var maquina = parseInt(Math.random() * 3)
    cartaMaquina = cartas[maquina]
    cartaJogador = cartas[jogador]
    document.getElementById("btnSortear").disabled = true
    document.getElementById("btnJogar").disabled = false
    exibirCarta(cartaJogador.imagem, "j")
    exibirCarta(cartaMaquina.imagem, "m")


}

function exibirOpcoes() {
    var texto = ""

    for (var atributo in cartaJogador.atributos) {
        texto += "<input type='radio' name='atributo' value='" + atributo + "'>" + atributo + " " + cartaJogador.atributos[atributo] + "<br>"
    }
    return texto
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

    if (atributoSelecionado != '') {
        if (cartaJogador.atributos[atributoSelecionado] > cartaMaquina.atributos[atributoSelecionado]) {
            resultado.innerHTML = "<h2>Você venceu!!</h2>"
        } else if (cartaJogador.atributos[atributoSelecionado] == cartaMaquina.atributos[atributoSelecionado]) {
            resultado.innerHTML = "<h2>Empatou</h2>"
        } else {
            resultado.innerHTML = "<h2>Você perdeu!</h2>"
        } document.getElementById("btnSortear").disabled = false
        document.getElementById("btnJogar").disabled = true
    } else  {
        resultado.innerHTML = "<h2>Selecione um atributo</h2>"
    }
}

function exibirCarta(url, quem) {
        var div 
        var moldura = `<img src="https://www.alura.com.br/assets/img/imersoes/dev-2021/card-super-trunfo-transparent.png" style=" width: inherit; height: inherit; position: absolute;">`;
        var tagHTML = "<div id='opcoes' class='carta-status'>"
        var nome = ""

    if (quem == 'j') {
        nome = `<p class="carta-subtitle">${cartaJogador.nome}`
        div = document.getElementById('carta-jogador')
        div.innerHTML = moldura + nome + tagHTML + exibirOpcoes() + "</div>"
    } else {
        nome = `<p class="carta-subtitle">${cartaMaquina.nome}`
        div = document.getElementById('carta-maquina')
        div.innerHTML = moldura + nome + tagHTML + "</div>"
    }
    div.style.backgroundImage = `url(${url})`



}
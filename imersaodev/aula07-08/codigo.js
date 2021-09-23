var baralho = [["YUGI", "https://ms.yugipedia.com//c/c4/YamiYugi-DULI.png", 7, 5, 9],
    ["JOEY", "https://static.wikia.nocookie.net/yugioh/images/0/0e/JoeyWheelerDT.png", 8, 3, 5],
    ["TEA", "https://ms.yugipedia.com//e/e3/T%C3%A9aGardner-DULI.png", 3, 8, 5],
    ["MOKUBA", "https://static.wikia.nocookie.net/yugioh/images/9/99/MokubaKaiba-DULI.png", 5, 5, 5],
    ["MAGA NEGRA", "superTrunfo.png", 10, 10, 10]]

var cartas = []
var cartaMaquina
var cartaJogador

function preencheBaralho() {
    baralho.forEach(function(e) {
        var carta = {nome: '', imagem: '', atributos: {ataque:0, defesa:0, magia:0}}
        carta.nome = e[0]
        carta.imagem = e[1]
        carta.atributos['ataque'] = e[2]
        carta.atributos['defesa'] = e[3]
        carta.atributos['magia'] = e[4]
        cartas.push(carta)
    })
    
}

preencheBaralho()

function sortearCarta() {
    var jogador = parseInt(Math.random() * cartas.length)
    var maquina = parseInt(Math.random() * cartas.length)
    cartaMaquina = cartas[maquina]
    cartaJogador = cartas[jogador]
    document.getElementById("btnSortear").disabled = true
    document.getElementById("btnJogar").disabled = false
    exibirCarta(cartaJogador, "j")
    exibirCarta(cartaMaquina, "m")
    document.getElementById("resultado").innerHTML=""
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

function exibirCarta(carta, quem) {
        var div 
        var moldura = `<img src="https://www.alura.com.br/assets/img/imersoes/dev-2021/card-super-trunfo-transparent.png" style=" width: inherit; height: inherit; position: absolute;">`;
        var tagHTML = "<div id='opcoes' class='carta-status'>"
        var nome = `<p class="carta-subtitle">${carta.nome}`
    if (quem == 'j') {
        div = document.getElementById('carta-jogador')
        div.innerHTML = moldura + nome + tagHTML + exibirOpcoes() + "</div>"
    } else {
        div = document.getElementById('carta-maquina')
        div.innerHTML = moldura + nome + tagHTML + "</div>"
    }
    div.style.backgroundImage = `url(${carta.imagem})`
}
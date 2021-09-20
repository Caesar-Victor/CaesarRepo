var jogadores = []

function calculaPontos(jogador) {
    jogador.pontos = jogador.vitorias * 3 + jogador.empates
}

function recarrega(jogadores) {
    var elementos = ""
    var jogador
    for(var i = 0; i < jogadores.length; i++) {
        jogador = jogadores[i]
        elementos += "<tr><td>" + jogador.nome + "</td>"
        elementos += "<td>" + jogador.vitorias + "</td>"
        elementos += "<td>" + jogador.empates + "</td>"
        elementos += "<td>" + jogador.derrotas + "</td>"
        elementos += "<td>" + jogador.pontos + "</td>"
        elementos += "<td><button onClick='adicionarEvento(1, "+ i + ")'>Vitória</button></td>"
        elementos += "<td><button onClick='adicionarEvento(2, " + i + ")'>Empate</button></td>"
        elementos += "<td><button onClick='adicionarEvento(3, " + i + ")'>Derrota</button></td></tr>"
    }
    var tabela = document.getElementById("tabelaJogadores")
    tabela.innerHTML = elementos
}

function adicionarEvento(evento, i) {
    if (evento == "1") { //caso de adicionar vitoria
        jogadores[i].vitorias++
    } else if (evento == "2") { //caso de adicionar empate  
        jogadores[i].empates++
    } else if (evento == "3") { //caso de adicionar derrota
        jogadores[i].derrotas++
    }
    calculaPontos(jogadores[i])
    recarrega(jogadores)
}

function addJogador(fase) {
    var adicionar = document.getElementById("manuseio")
    var aviso = document.getElementById("aviso")
    aviso.innerHTML = ""
    if (fase == "1") {
        adicionar.innerHTML = "<br><input type='text' id='nomeJogador' placeholder='Insira o nome de Jogador(a)'>"
        adicionar.innerHTML += " <button id='add' onClick='addJogador(2)'>Adicionar</button>"
    } else {
        var nome = document.getElementById("nomeJogador").value
        var achou = false
        jogadores.forEach(function (e) {
            if (e.nome == nome) {
                aviso.innerHTML = "<br>Nome de jogador(a) ja existente"
                achou = true
            }
        })

        if (!achou) {
            var jogador = {
                nome: nome,
                vitorias: 0,
                derrotas: 0,
                empates: 0,
                pontos: 0
            }
            jogadores.push(jogador)
        }recarrega(jogadores)
        adicionar.innerHTML = "<br><button id='add' onClick='addJogador(1)'>Adicionar</button>"
        adicionar.innerHTML += "<button id='rmv' onClick='rmvJogador(1)'>Remover</button>"
    }
}

function rmvJogador(fase) {
    var remover = document.getElementById("manuseio")
    var aviso = document.getElementById("aviso")
    aviso.innerHTML = ""
    if (fase == "1") {
        remover.innerHTML = "<br><input type='text' id='nomeJogador' placeholder='Insira o nome de Jogador(a)'>"
        remover.innerHTML += " <button id='rmv' onClick='rmvJogador(2)'>Remover</button><br>"
    } else {
        var nome = document.getElementById("nomeJogador").value
        var achou = false
        for(var i = 0; i < jogadores.length; i++) {
            if (jogadores[i].nome == nome) {
                aviso.innerHTML = "<br>Jogador(a) "+ nome + " Removido"
                achou = true
                jogadores.splice(i, 1)
                recarrega(jogadores)
            }
        }if(!achou){
            aviso.innerHTML = nome + "<br>não é um(a) jogador(a) valido"
        }
        remover.innerHTML = "<br><button id='add' onClick='addJogador(1)'>Adicionar</button>"
        remover.innerHTML += "<button id='rmv' onClick='rmvJogador(1)'>Remover</button>"
    }
}
    
function zera() {
    jogadores.forEach(function(jogador){
        jogador.vitorias = 0
        jogador.empates = 0
        jogador.derrotas = 0
        jogador.pontos = 0
    })
    recarrega(jogadores)
}
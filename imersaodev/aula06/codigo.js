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
    var adicionar = document.getElementById("adicionar")
    if (fase == "1") {
        adicionar.innerHTML = "<br><input type='text' id='nomeJogador' placeholder='Insira o nome de Jogador(a)'>"
        adicionar.innerHTML += " <button id='botao' onClick='addJogador(2)'>Adicionar</button>"
    } else {
        var nome = document.getElementById("nomeJogador").value
        var achou = false
        jogadores.forEach(function (e) {
            if (e.nome == nome) {
                adicionar.innerHTML += "<br>Nome de jogador(a) ja existente"
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
        adicionar.innerHTML = "<br><button id='botao' onClick='addJogador(1)'>Adicionar</button>"
    }
}
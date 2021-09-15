var numSecreto = parseInt(Math.random()*10)

function Chutar() {
    var chute = parseInt(document.getElementById("valor").value);
    var resultado = document.getElementById("resultado")
    if (chute == numSecreto) {
        resultado.innerHTML = "Você acertou!!!"
    } else if (chute < 0 || chute > 10) {
        resultado.innerHTML = "Digite um valor válido"
    } else {
        resultado.innerHTML = "Errou"
    }
}

/* 01. Adicionar um número de tentativas para a pessoa tentar acertar e imprimir a resposta no final.


 02. Quando a pessoa errar, deixar na mensagem se o número chutado é maior ou menor que o número secreto.


 03. Pesquisar e aprender a diferença entre == e ===

 == é uma comparação de valor, enquanto === é uma comparação de valor e tipo*/
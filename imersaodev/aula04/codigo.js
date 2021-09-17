var filmes = [["her", "https://upload.wikimedia.org/wikipedia/pt/9/9b/Her.jpg"],
    ["poderoso chefao", "https://a-static.mlcdn.com.br/1500x1500/quadro-decorativo-o-poderoso-chefao-filmes-cartaz-cinema-decoracoes-com-moldura-g02-vital-quadros/vitalquadrosdobrasil/080008840804/006c5306ba436d3cb06b1468472269dd.jpg"],
    ["laranja mecanica", "https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/91/05/58/20127559.jpg"]]

for (var url in filmes) {
    document.write("<img src=" + filmes[url][1] + ">")
}

function procura(nome, url) {
    for (var i = 0; i < filmes.length; i++) {
        if (nome == filmes[i][0] || url == filmes[i][1]) {
            return true
        }
    } return false
}

function addFilme() {
    var nome = document.getElementById("nome").value;
    var url = document.getElementById("url").value;
    var texto = document.getElementById("resultado");
    if (procura(nome, url)) {
        texto.innerHTML = "Filme repetido";
    } else {
        filmes.push([nome, url]);
        document.body.innerHTML += "<img src=" + url + ">"
    }
}
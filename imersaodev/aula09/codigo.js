function projetos() {
    var main = document.getElementById(main)


}

function redesSociais() {
    var rS = document.getElementById("rS")

    var redes = [["https://vicnasc8.wixsite.com/caesarfile", "site.png"],
        ["https://www.linkedin.com/in/victor-nascimento-pereira-b3367313b", "linkedin.png"],
        ["https://www.facebook.com/Caesar.Victor2", "face.png"]]

    for (var rede in redes) {
    rS.innerHTML += `<a href="${rede[0]}" target="_blank"><img src="${rede[1]}"/></a>`
    }
}
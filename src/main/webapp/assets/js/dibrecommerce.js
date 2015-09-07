// VARIAVEIS PARA USO DE GAMBIARRAS
var telaLargura = window.innerWidth;
var telaAltura = window.innerHeight;
window.addEventListener("resize", function () {
  telaLargura = window.innerWidth;
  telaAltura = window.innerHeight;
});


// QUANDO A PÁGINA ESTIVER PRONTA,
// SERÃO LIDAS AS INSTRUÇÕES DENTRO
// DESTE BLOCO
$(document).ready(function () {

  /* Voltar ao topo */
  $(".rolar-topo").click(function () {
    var body = $("html, body");
    body.animate({scrollTop: 0}, '500', 'swing');
  });

});

// DEPOIS DA PÁGINA SER CARREGADA,
// SERÃO LIDAS AS INSTRUÇÕES DENTRO
// DESTE BLOCO
$(window).load(function () {
  
  

});
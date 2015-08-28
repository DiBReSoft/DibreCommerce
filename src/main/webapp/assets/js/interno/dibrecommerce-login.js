/* Estas declaracoes irao monitorar a altura e largura da tela
 * salvando estes dados nas seguintes variaveis, mesmo quando
 * houver redimensionamento da tela (usuario virar o smartphone de lado e etc) */
var telaLargura = window.innerWidth;
var telaAltura = window.innerHeight;

$(window).resize(function () {
  telaLargura = window.innerWidth;
  telaAltura = window.innerHeight;
});

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

/* Todos os codigos dentro desta declaracao, 
 * serao executados assim que a pÃ¡gina for ACESSADA */
$(document).ready(function () {

  function posicionarBoxCredenciais() {
    if (telaAltura > 450 && telaLargura > 767) {
      $("section").css("height", (telaAltura - $("footer").height()) - 35 + "px");
    }
  }
  posicionarBoxCredenciais();
  $(window).resize(posicionarBoxCredenciais);

});

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

/* Todos os codigos dentro desta declaracao, 
 * serao executados assim que a pÃ¡gina for CARREGADA POR COMPLETO */
$(window).load(function () {

});
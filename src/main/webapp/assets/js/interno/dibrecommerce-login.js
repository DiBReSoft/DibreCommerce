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
 * serao executados assim que a pagina for ACESSADA */
$(document).ready(function () {
  
});

/******************************************************************************/
/******************************************************************************/
/******************************************************************************/
/******************************************************************************/

/* Todos os codigos dentro desta declaracao, 
 * serao executados assim que a pÃ¡gina for CARREGADA POR COMPLETO */
$(window).load(function () {

});
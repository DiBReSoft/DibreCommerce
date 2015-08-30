/* INFORME DO TEMPO NA UNIDADE */

var nomeUnidade = $("#unidadeNome").text();
nomeUnidade = nomeUnidade.replace(" ", "+");
console.log(nomeUnidade);

var xmlhttp = new XMLHttpRequest();
var url = "/DibreCommerce/assets/js/tempo-saopaulo.json";

xmlhttp.onreadystatechange = function () {
  if (xmlhttp.readyState === 4 && xmlhttp.status === 200) {
    previsaoTempoJSON(xmlhttp.responseText);
  }
};

xmlhttp.open("GET", url, true);
xmlhttp.send();

function previsaoTempoJSON(response) {
  var arr = JSON.parse(response);
  $("#unidadeTemperatura").text("" + arr.agora.temperatura);
  $("#unidadeUmidade").text("" + arr.agora.umidade);
}
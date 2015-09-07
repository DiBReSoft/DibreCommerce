$(document).ready(function () {

  informeClima();

  /* INFORME DO TEMPO NA UNIDADE */
  function informeClima() {

    var nomeUnidade = $("#climaUnidade").text();
    console.log(nomeUnidade);

    $.ajax({
      "async": true, //cannot be false for JSONP
      "url": "http://api.openweathermap.org/data/2.5/weather?q=" + nomeUnidade + ",br&units=metric&lang=pt",
      "dataType": 'jsonp',
      "method": "GET",
      "error": function (jqXHR, textStatus, errorThrown) {
        //included so you can see any errors
        console.log(textStatus + ': ' + errorThrown);
      },
      "success": function (data, textStatus, jqXHR) {
        informeClimaFormatar(data);
      }
    });

    function informeClimaFormatar(clima) {
      $("#climaTemperatura").text("" + clima.main.temp);
      $("#climaUmidade").text("" + clima.main.humidity);
      $("#climaDescricao").text("" + clima.weather[0].description);
      informeClimaVisual(clima);
    }

    function informeClimaVisual(climaCondicao) {
      var informeClimaContainer = $("#climaContainer");
      var informeClimaIcone = $("#climaIcone");
      console.log(climaCondicao.weather[0].main);
      switch (climaCondicao.weather[0].main) {
        case "Clear":
          informeClimaContainer.addClass("bg-clima-aberto");
          informeClimaIcone.addClass("fa-sun-o");
          break;
        case "Clouds":
          informeClimaContainer.addClass("bg-clima-nublado");
          informeClimaIcone.addClass("fa-cloud");
          break;
        case "Rain":
          informeClimaContainer.addClass("bg-clima-chuvoso");
          informeClimaIcone.addClass("fa-tint");
          break;
        case "Thunderstorm":
          informeClimaContainer.addClass("bg-clima-chuvoso");
          informeClimaIcone.addClass("fa-flash");
          break;
        default:
          informeClimaIcone.addClass("fa-question");
          break;
      }
    }

  }
  /* INFORME DO TEMPO NA UNIDADE */

});
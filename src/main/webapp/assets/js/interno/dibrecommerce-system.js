// VARIAVEIS PARA USO DE GAMBIARRAS
var telaLargura = window.innerWidth;
var telaAltura = window.innerHeight;
document.addEventListener("resize", function () {
  telaLargura = window.innerWidth;
  telaAltura = window.innerHeight;
});


// QUANDO A PÁGINA ESTIVER PRONTA,
// SERÃO LIDAS AS INSTRUÇÕES DENTRO
// DESTE BLOCO
$(document).ready(function () {

  igualarMarcaComMenuLateral();
  $(window).resize(igualarMarcaComMenuLateral);

  alterarTema();

});


// DEPOIS DA PÁGINA SER CARREGADA,
// SERÃO LIDAS AS INSTRUÇÕES DENTRO
// DESTE BLOCO
$(window).load(function () {

  // inserir código aqui

});

// para ajustar as medidas entre menu lateral e o logo do sistema na navbar
function igualarMarcaComMenuLateral() {

  var larguraMenuLateral = $("aside.side-menu").innerWidth() - 15;
  $(".navbar-header").css("min-width", larguraMenuLateral + "px");

  var alturaMenuLateral;
  if (telaAltura > $("main.side-content").innerHeight()) {
    alturaMenuLateral = telaAltura - $(".navbar").innerHeight();
  } else {
    alturaMenuLateral = $("main.side-content").innerHeight();
  }

  $("aside.side-menu").css("min-height", alturaMenuLateral + "px");

}

// para alterar o tema do sistema conforme a vontade do usuário
function alterarTema() {

  $("[data-target='#selecionarTema']").click(function () {

    console.info("Modal para seleção de tema.");

    $.get("/DibreCommerce/admin/extra/selecionar-tema.html", {"_": $.now()})
            .done(function () {
              $("#carregarConteudoExtra").load("/DibreCommerce/admin/extra/selecionar-tema.html");
              setTimeout(function () {
                $("#temaModal").modal("show");
                escolherTema();
              }, 250);
            });

  });

}

function escolherTema() {
  var urlCSS = "";
  var classNavbar = "navbar-default";
  var classBotao = "btn-primary";

  $(".btn-toggle-theme").click(function () {

    console.info("Aplicar tema...");

    urlCSS = $(this).attr("data-theme-url");
    var $btn = $(this).button("loading");

    $.get(urlCSS, {"_": $.now()}).done(function () {

      $("#coreCSS").attr("href", urlCSS);

      $("#msgResultadoOperacao").toggleClass("hidden", "alert-success");
      $("#msgResultadoOperacao span").html(":-)<br />Tema aplicado com sucesso!");

    }).error(function () {

      $("#msgResultadoOperacao").toggleClass("hidden", "alert-danger");
      $("#msgResultadoOperacao span").html(":-(<br />Houve algum erro em aplicar este tema.");

    });

    $btn.button("reset");

  });

  $(".btn-save-theme").click(function () {

    /* Criar POST para salvar opção do usuário em seu perfil
     
     $.post("salvarTemaServlet", { 
     temaCSS: urlCSS,
     temaNavbar: classNavbar,
     temaBotao: classBotao
     });
     
     */

  });
}
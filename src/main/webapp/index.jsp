<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>

  <jsp:attribute name="paginaTitulo">
    Hospede-se conosco
  </jsp:attribute>

  <jsp:attribute name="paginaHead">
    <!-- Adiciona CSS e outros que vão no <head> da página -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/bootstrap-datepicker.min.css" />" />
  </jsp:attribute>

  <jsp:attribute name="paginaBottom">
    <!-- Adiciona JS e outros que vão no final da página -->
    <script type="text/javascript" src="<c:url value="/assets/js/bootstrap-datepicker.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/bootstrap-datepicker.pt-BR.min.js" />"></script>
    <script type="text/javascript">
      $(document).ready(function () {

        /* Preenche o Placeholder nos campos de data, com datas reais */
        var dataHoje = new Date();
        $("#reservaIn").attr("placeholder", "Ex.: " + dataHoje.getDate() + "/" + (dataHoje.getMonth() + 1) + "/" + dataHoje.getFullYear());
        var dataFutura = new Date();
        dataFutura.setDate(dataHoje.getDate() + 5);
        $("#reservaOut").attr("placeholder", "Ex.: " + dataFutura.getDate() + "/" + (dataFutura.getMonth() + 1) + "/" + dataFutura.getFullYear());
        /* Preenche o Placeholder nos campos de data, com datas reais */

        /* Inicializa o Calendário nos campos de data */
        $(".init-datepicker").datepicker({
          language: "pt-BR",
          format: "dd/mm/yyyy",
          todayBtn: "linked"
        });
        /* Inicializa o Calendário nos campos de data */

        $("#reservaIn").on("change", function () {

        });

        function vertificarDataEntrada() {

        }

      });
    </script>
  </jsp:attribute>

  <jsp:body>
    <!-- Conteúdo da página index.jsp -->

    <!-- TOPO DA PÁGINA COM AS SUGESTÕES -->
    <header class="jumbotron fundo-foto-hotel">

      <div class="container">

        <h1>
          Hospede-se num dos melhores hotéis!
        </h1>

        <p>
          Seja a negócios, breve passagem ou longas férias.
          <br />
          Escolha uma unidade Lebre Hotel na sua cidade-destino e aproveite
          toda a comodidade e bem estar.
        </p>

        <p>
          <a class="btn btn-lg btn-primary" role="button"
             href="/LebreHotel/reservas"
             title="Garanta seu lugar conosco">
            <span class="glyphicon glyphicon-chevron-right"></span>
            Faça já sua reserva
          </a>
        </p>

      </div>

    </header>
    <!-- TOPO DA PÁGINA COM AS SUGESTÕES -->

    <!-- SEÇÃO COM OFERTAS -->
    <section>

      <div class="container">

        <h1 class="titulo-secao text-success">
          Ofertas em destaque
        </h1>

        <!-- Example row of columns -->

        <div class="row">

          <div class="col-md-4 col-sm-6">

            <div class="thumbnail thumbnail-oferta">

              <img src="<c:url value='/assets/img/unidades/fake-hotel-dubai_LR.jpg' />" 
                   alt="Fake Hotel" />

              <div class="caption">

                <h3>
                  Destino #1
                </h3>

                <div class="thumbnail-oferta-descricao">                  
                  Descrição da oferta com detalhes sucintos, informações e
                  atrativos diferenciais.
                </div>

                <div class="thumbnail-oferta-preco">
                  <h4>
                    <strong>
                      R$ 200,00
                    </strong>
                    <small>
                      2x de R$ 100,00 (diária)
                    </small>
                  </h4>
                </div>
                <p>
                  <a href="<c:url value='/reservas/destino-1' />" 
                     class="btn btn-primary" role="button"
                     title="Faça sua reserva online">
                    Reservar
                  </a>
                  <a href="<c:url value='/hoteis/destino-1' />" 
                     class="btn btn-success" role="button"
                     title="Veja detalhes do hotel">
                    Informações
                  </a>
                </p>
              </div>

            </div>

          </div>

          <div class="col-md-4 col-sm-6">

            <div class="thumbnail thumbnail-oferta">

              <img src="<c:url value='/assets/img/unidades/fake-hotel-2_LR.jpg' />" 
                   alt="Fake Hotel" />

              <div class="caption">

                <h3>
                  Destino #2
                </h3>

                <div class="thumbnail-oferta-descricao">                  
                  Descrição da oferta com detalhes sucintos, informações e
                  atrativos diferenciais.
                </div>

                <div class="thumbnail-oferta-preco">
                  <h4>
                    <strong>
                      R$ 200,00
                    </strong>
                    <small>
                      2x de R$ 100,00 (diária)
                    </small>
                  </h4>
                </div>
                <p>
                  <a href="<c:url value='/reservas/destino-2' />" 
                     class="btn btn-primary" role="button"
                     title="Faça sua reserva online">
                    Reservar
                  </a>
                  <a href="<c:url value='/hoteis/destino-2' />" 
                     class="btn btn-success" role="button"
                     title="Veja detalhes do hotel">
                    Informações
                  </a>
                </p>
              </div>

            </div>

          </div>

          <div class="col-md-4 col-sm-6">

            <div class="thumbnail thumbnail-oferta">

              <img src="<c:url value='/assets/img/unidades/fake-hotel-3_LR.jpg' />" 
                   alt="Fake Hotel" />

              <div class="caption">

                <h3>
                  Destino #3
                </h3>

                <div class="thumbnail-oferta-descricao">                  
                  Descrição da oferta com detalhes sucintos, informações e
                  atrativos diferenciais.
                </div>

                <div class="thumbnail-oferta-preco">
                  <h4>
                    <strong>
                      R$ 200,00
                    </strong>
                    <small>
                      2x de R$ 100,00 (diária)
                    </small>
                  </h4>
                </div>
                <p>
                  <a href="<c:url value='/reservas/destino-3' />" 
                     class="btn btn-primary" role="button"
                     title="Faça sua reserva online">
                    Reservar
                  </a>
                  <a href="<c:url value='/hoteis/destino-3' />" 
                     class="btn btn-success" role="button"
                     title="Veja detalhes do hotel">
                    Informações
                  </a>
                </p>
              </div>

            </div>

          </div>

          <div class="col-md-4 col-sm-6">

            <div class="thumbnail thumbnail-oferta">

              <img src="<c:url value='/assets/img/unidades/fake-hotel-4_LR.jpg' />" 
                   alt="Fake Hotel" />

              <div class="caption">

                <h3>
                  Destino #4
                </h3>

                <div class="thumbnail-oferta-descricao">                  
                  Descrição da oferta com detalhes sucintos, informações e
                  atrativos diferenciais.
                </div>

                <div class="thumbnail-oferta-preco">
                  <h4>
                    <strong>
                      R$ 200,00
                    </strong>
                    <small>
                      2x de R$ 100,00 (diária)
                    </small>
                  </h4>
                </div>
                <p>
                  <a href="<c:url value='/reservas/destino-4' />" 
                     class="btn btn-primary" role="button"
                     title="Faça sua reserva online">
                    Reservar
                  </a>
                  <a href="<c:url value='/hoteis/destino-4' />" 
                     class="btn btn-success" role="button"
                     title="Veja detalhes do hotel">
                    Informações
                  </a>
                </p>
              </div>

            </div>

          </div>

          <div class="col-md-4 col-sm-6">

            <div class="thumbnail thumbnail-oferta">

              <img src="<c:url value='/assets/img/unidades/fake-hotel-5_LR.jpg' />" 
                   alt="Fake Hotel" />

              <div class="caption">

                <h3>
                  Destino #5
                </h3>

                <div class="thumbnail-oferta-descricao">                  
                  Descrição da oferta com detalhes sucintos, informações e
                  atrativos diferenciais.
                </div>

                <div class="thumbnail-oferta-preco">
                  <h4>
                    <strong>
                      R$ 200,00
                    </strong>
                    <small>
                      2x de R$ 100,00 (diária)
                    </small>
                  </h4>
                </div>
                <p>
                  <a href="<c:url value='/reservas/destino-5' />" 
                     class="btn btn-primary" role="button"
                     title="Faça sua reserva online">
                    Reservar
                  </a>
                  <a href="<c:url value='/hoteis/destino-5' />" 
                     class="btn btn-success" role="button"
                     title="Veja detalhes do hotel">
                    Informações
                  </a>
                </p>
              </div>

            </div>

          </div>

          <div class="col-md-4 col-sm-6">

            <div class="thumbnail thumbnail-oferta">

              <img src="<c:url value='/assets/img/unidades/fake-hotel-6_LR.jpg' />" 
                   alt="Fake Hotel" />

              <div class="caption">

                <h3>
                  Destino #6
                </h3>

                <div class="thumbnail-oferta-descricao">                  
                  Descrição da oferta com detalhes sucintos, informações e
                  atrativos diferenciais.
                </div>

                <div class="thumbnail-oferta-preco">
                  <h4>
                    <strong>
                      R$ 200,00
                    </strong>
                    <small>
                      2x de R$ 100,00 (diária)
                    </small>
                  </h4>
                </div>
                <p>
                  <a href="<c:url value='/reservas/destino-6' />" 
                     class="btn btn-primary" role="button"
                     title="Faça sua reserva online">
                    Reservar
                  </a>
                  <a href="<c:url value='/hoteis/destino-6' />" 
                     class="btn btn-success" role="button"
                     title="Veja detalhes do hotel">
                    Informações
                  </a>
                </p>
              </div>

            </div>

          </div>

        </div>

        <a href="<c:url value='/ofertas' />"
           title="Veja mais ofertas"
           class="btn btn-lg btn-info btn-block btn-ofertas">
          <span class="glyphicon glyphicon-plus"></span>
          VEJA MAIS OFERTAS
        </a>

      </div>

    </section>
    <!-- SEÇÃO COM OFERTAS -->


    <section>

      <div class="container">

        <div class="col-md-8">

          <h2>
            Hospede-se conosco
          </h2>

          <div class="panel panel-primary">

            <div class="panel-body">

              <div class="hidden-sm hidden-xs" style="padding: 8px 0px;"></div>

              <!-- Guia de uso dos Forms: http://getbootstrap.com/css/#forms -->
              <form method="post" action="reservar" enctype="utf-8">

                <div class="col-md-6">

                  <div class="form-group" id="reservaInContainer">

                    <label for="reservaIn" class="hidden-lg hidden-md">
                      Data de Entrada:
                    </label>

                    <div class="input-group">

                      <div class="input-group-addon">

                        <label for="reservaIn">

                          <i class="fa fa-fw fa-calendar-plus-o"></i>

                          <span class="hidden-sm hidden-xs">
                            Entrada: 
                          </span>

                        </label>

                      </div>

                      <input type="text" class="form-control init-datepicker" id="reservaIn" />

                    </div>

                  </div>

                </div>

                <div class="col-md-6">

                  <div class="form-group" id="reservaOutContainer">

                    <label for="reservaOut" class="hidden-lg hidden-md">
                      Data de Saída:
                    </label>

                    <div class="input-group">

                      <div class="input-group-addon">

                        <label for="reservaOut">

                          <i class="fa fa-fw fa-calendar-minus-o"></i>

                          <span class="hidden-sm hidden-xs">
                            Saída:
                          </span>

                        </label>

                      </div>

                      <input type="text" class="form-control init-datepicker" id="reservaOut" />

                    </div>

                  </div>

                </div>

                <div class="clearfix"></div>

                <div class="col-md-8">

                  <div class="form-group">

                    <label class="control-label hidden-lg hidden-md" for="reservaHotel">
                      Selecione uma unidade:
                    </label>

                    <div class="input-group">

                      <div class="input-group-addon">

                        <label for="focusedInput">

                          <i class="fa fa-fw fa-map-marker"></i>

                          <span class="hidden-sm hidden-xs">
                            Unidade:
                          </span>

                        </label>

                      </div>

                      <select class="form-control" 
                              id="reservaHotel" name="reservaHotel">
                        <option disabled="disabled" selected>
                          Selecione uma de nossas unidades
                        </option>
                        <option value="1">
                          SP | São Paulo
                        </option>
                        <option value="2">
                          SP | São José dos Campos
                        </option>
                      </select>

                    </div>

                  </div>

                </div>

                <div class="col-md-4">

                  <button id="reservaCotar" type="button" class="btn btn-primary btn-block disabled">
                    Cotar Preço
                    <i class="fa fa-fw fa-search"></i>
                  </button>

                </div>

              </form>        

            </div>

            <div class="panel-footer text-center">

              Lebre Hotel | Nos melhores locais

            </div>

          </div>

        </div>

      </div>

    </section>

    <!-- Conteúdo da página index.jsp -->

  </jsp:body>

</t:template>
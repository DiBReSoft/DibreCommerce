<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>

  <jsp:attribute name="paginaTitulo">
    Início
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

        $(".init-datepicker").datepicker({
          language: "pt-BR",
          format: "dd/mm/yyyy",
          todayBtn: "linked"
        });

      });
    </script>
  </jsp:attribute>

  <jsp:body>
    <!-- Conteúdo da página index.jsp -->
    <header class="jumbotron">

      <div class="container-fluid">

        <h1>Promoções</h1>
        <p>
          Aproveite o melhor do Feriado conosco em Porto Seguro!
        </p>
        <p>
          <a class="btn btn-lg btn-success"
             href="/promocoes/porto-seguro">
            Detalhes e Reservas
          </a>
        </p>

      </div>

    </header>

    <section>

      <div class="container-fluid">

        <div class="col-lg-6">

          <h2>
            Hospede-se conosco
          </h2>

          <div class="panel panel-primary">

            <div class="panel-body">

              <div class="hidden-sm hidden-xs" style="padding: 8px 0px;"></div>

              <!-- Guia de uso dos Forms: http://getbootstrap.com/css/#forms -->
              <form method="post" action="reservar" enctype="utf-8">

                <div class="col-md-6">

                  <div class="form-group">

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

                  <div class="form-group">

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

                    <label class="control-label hidden-lg hidden-md" for="focusedInput">
                      Onde pretende ficar?
                    </label>

                    <div class="input-group">

                      <div class="input-group-addon">

                        <label for="focusedInput">

                          <i class="fa fa-fw fa-map-marker"></i>

                          <span class="hidden-sm hidden-xs">
                            Destino:
                          </span>

                        </label>

                      </div>

                      <input class="form-control" id="focusedInput" 
                             type="text" placeholder="Cidade ou Hotel" />

                    </div>

                  </div>

                </div>

                <div class="col-md-4">

                  <button type="submit" class="btn btn-primary btn-block">
                    Encontrar
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

        <div class="col-lg-6">

          <h2 class="text-success">
            Recomendamos para você
          </h2>

          <div class="panel panel-success">

            <div class="panel-body">

              <div class="hidden-sm hidden-xs" style="padding: 8px 0px;"></div>

              <ul class="list-group">
                <li class="list-group-item">
                  <span class="badge">14</span>
                  Unidade São Paulo
                </li>
                <li class="list-group-item">
                  <span class="badge">2</span>
                  Unidade Rio de Janeiro
                </li>
                <li class="list-group-item">
                  <span class="badge">1</span>
                  Unidade Pernambuco
                </li>
              </ul>

            </div>

          </div>

        </div>
      </div>

    </section>

    <!-- Conteúdo da página index.jsp -->

  </jsp:body>

</t:template>
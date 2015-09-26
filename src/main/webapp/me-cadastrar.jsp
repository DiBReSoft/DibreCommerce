<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>

  <jsp:attribute name="paginaTitulo">
    Me cadastrar
  </jsp:attribute>

  <jsp:attribute name="paginaHead">
    <!-- Adiciona CSS e outros que vão no <head> da página -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/bootstrap-datepicker.min.css" />" />
  </jsp:attribute>

  <jsp:attribute name="paginaBottom">
    <!-- Adiciona JS e outros que vão no final da página -->

  </jsp:attribute>

  <jsp:body>
    <!-- Conteúdo da página me-cadastrar.jsp -->

    <!-- TOPO, COM O TÍTULO DA PÁGINA -->
    <header class="header-generico bg-primary">

      <div class="container">

        <h1>
          Me cadastrar
        </h1>

      </div>

    </header>
    <!-- TOPO, COM O TÍTULO DA PÁGINA -->

    <section>

      <div class="container">

        <div class="col-md-8">

          <h1 class="titulo-secao">
            Identificação
          </h1>

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

    <!-- Conteúdo da página me-cadastrar.jsp -->

  </jsp:body>

</t:template>
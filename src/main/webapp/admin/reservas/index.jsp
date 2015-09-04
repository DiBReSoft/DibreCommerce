<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/interno" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>

  <jsp:attribute name="paginaTitulo">
    Reservas
  </jsp:attribute>

  <jsp:attribute name="paginaHead">
    <!-- Adiciona CSS e outros que vão no <head> da página -->
  </jsp:attribute>

  <jsp:attribute name="paginaBottom">
    <!-- Adiciona JavaScript e outros trecho que vão ao final da página -->
    <script type="text/javascript" src="<c:url value='/assets/js/interno/dibrecommerce-painel-de-controle.js' />"></script>
    <script type="text/javascript">
      $(document).ready(function () {
        $("#menu-reservas").addClass("active");
      });
    </script>
  </jsp:attribute>

  <jsp:body>
    <!-- Conteúdo da página index.jsp -->

    <section>

      <div class="container-fluid">

        <div class="row painel-opcoes">

          <div class="col-md-9">

            <div class="page-header">
              <h1>
                Painel 
                <span class="hidden-sm hidden-xs">
                  Administrativo
                </span>
                / 
                <strong>
                  Reservas
                </strong>
              </h1>
            </div>

            <p class="lead">
              Opções relativas as reservas no hotel.
            </p>

            <div class="row">

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/reservas/agendar' />"
                   class="thumbnail text-center tooltip-bottom"
                   title="Agende uma nova reserva em sua unidade">

                  <div class="thumbnail-icon">
                    <i class="fa fa-3x fa-book"></i>
                  </div>

                  <div class="thumbnail-title">
                    <h2>
                      Agendar Nova
                    </h2>
                  </div>

                  <div class="thumbnail-description">
                    <p class="lead">
                      Realizar uma nova reserva de quarto no hotel
                    </p>
                  </div>

                </a>

              </div>

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/reservas/consultar' />"
                   class="thumbnail text-center tooltip-bottom"
                   title="Busque por uma reserva já agendada">

                  <div class="thumbnail-icon">
                    <i class="fa fa-3x fa-search"></i>
                  </div>

                  <div class="thumbnail-title">
                    <h2>
                      Consultar / Editar
                    </h2>
                  </div>

                  <div class="thumbnail-description">
                    <p class="lead">
                      Visualizar dados de uma reserva
                      ou editar detalhes
                    </p>
                  </div>

                </a>

              </div>

              <div class="col-sm-3 visible-sm-inline-block"></div>

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/reservas/cancelar' />"
                   class="thumbnail text-center tooltip-bottom"
                   title="Encontre uma reserva para cancelá-la">

                  <div class="thumbnail-icon">
                    <i class="fa fa-3x fa-search-minus"></i>
                  </div>

                  <div class="thumbnail-title">
                    <h2>
                      Cancelar Reserva
                    </h2>
                  </div>

                  <div class="thumbnail-description">
                    <p class="lead">
                      Caso haja desistência por parte do cliente
                    </p>
                  </div>

                </a>

              </div>

            </div>

          </div>

          <div class="col-md-3">

            <div class="page-header">
              <h1>
                Infos
              </h1>
            </div>

            <p class="lead">
              Auxiliares ao Hotel
            </p>

            <t:box-infos-lateral />

          </div>

        </div>

      </div>

    </section>

    <!-- Conteúdo da página index.jsp -->
  </jsp:body>

</t:template>
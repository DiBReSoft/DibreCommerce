<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/interno" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>

  <jsp:attribute name="paginaTitulo">
    Painel
  </jsp:attribute>

  <jsp:attribute name="paginaHead">
    <!-- Adiciona CSS e outros que vão no <head> da página -->
  </jsp:attribute>

  <jsp:attribute name="paginaBottom">
    <!-- Adiciona JavaScript e outros trecho que vão ao final da página -->
    <script type="text/javascript" src="<c:url value='/assets/js/interno/dibrecommerce-painel-de-controle.js' />"></script>
  </jsp:attribute>

  <jsp:body>
    <!-- Conteúdo da página index.jsp -->

    <section>

      <div class="container-fluid">

        <div class="page-header">
          <h1>
            Painel de Controle Administrativo
          </h1>
        </div>

        <p class="lead">
          Opções gerais para controle interno do hotel.
        </p>

        <div class="row painel-opcoes">

          <div class="col-md-9">

            <div class="row">

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/clientes' />"
                   class="thumbnail text-center"
                   title="Encontre em nossa base">

                  <div class="thumbnail-icon">
                    <i class="fa fa-3x fa-user"></i>
                  </div>

                  <div class="thumbnail-title">
                    <h2>
                      Clientes
                    </h2>
                  </div>

                  <div class="thumbnail-description">
                    <p class="lead">
                      Cadastre, consulte o histórico,
                      edite ou inative
                    </p>
                  </div>

                </a>

              </div>

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/estadias' />"
                   class="thumbnail text-center"
                   title="Controlar os clientes já hospedados">

                  <div class="thumbnail-icon">
                    <i class="fa fa-3x fa-bed"></i>
                  </div>

                  <div class="thumbnail-title">
                    <h2>
                      Estadias
                    </h2>
                  </div>

                  <div class="thumbnail-description">
                    <p class="lead">
                      Iniciar um Reserva, Editar ou Fechar a 
                      sessão já aberta
                    </p>
                  </div>

                </a>

              </div>

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/reservas' />"
                   class="thumbnail text-center"
                   title="Área de reservas para mais opções">

                  <div class="thumbnail-icon">
                    <i class="fa fa-3x fa-book"></i>
                  </div>

                  <div class="thumbnail-title">
                    <h2>
                      Reservas
                    </h2>
                  </div>

                  <div class="thumbnail-description">
                    <p class="lead">
                      Confira os próximos clientes, 
                      agende ou edite as reservas
                    </p>
                  </div>

                </a>

              </div>

            </div>

          </div>

          <div class="col-md-3">

            <div class="thumbnail text-center">

              <div class="thumbnail-icon">
                <i class="fa fa-3x fa-moon-o"></i>
              </div>

              <div class="thumbnail-title">
                <h2 id="unidadeNome">São Paulo</h2>
              </div>

              <div class="thumbnail-description lead">

                Temperatura:
                <strong>
                  <span id="unidadeTemperatura"></span>°
                </strong>

                <br />

                Umidade:
                <strong id="unidadeUmidade">
                  68
                </strong>

              </div>

            </div>

          </div>

        </div>

      </div>

    </section>

    <!-- Conteúdo da página index.jsp -->
  </jsp:body>

</t:template>
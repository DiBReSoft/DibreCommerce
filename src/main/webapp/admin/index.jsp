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
          Descrição da página
        </p>

        <div class="row">

          <div class="col-md-3 col-sm-6">

            <a href="<c:url value='' />"
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
                  agende ou edite as reserva
                </p>
              </div>

            </a>

          </div>

        </div>

      </div>

    </section>

    <!-- Conteúdo da página index.jsp -->
  </jsp:body>

</t:template>
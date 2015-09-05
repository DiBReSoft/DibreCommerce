<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/interno" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>

  <jsp:attribute name="paginaTitulo">
    Clientes
  </jsp:attribute>

  <jsp:attribute name="paginaHead">
    <!-- Adiciona CSS e outros que vão no <head> da página -->
  </jsp:attribute>

  <jsp:attribute name="paginaBottom">
    <!-- Adiciona JavaScript e outros trecho que vão ao final da página -->
    <script type="text/javascript" src="<c:url value='/assets/js/interno/dibrecommerce-painel-de-controle.js' />"></script>
    <script type="text/javascript">
      $(document).ready(function () {
        $("#menu-clientes").addClass("active");
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
                / 
                <strong>
                  Clientes
                </strong>
              </h1>
            </div>

            <p class="lead">
              Opções relativas aos clientes do hotel.
            </p>

            <div class="row">

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/clientes/cadastrar' />"
                   class="thumbnail text-center tooltip-bottom"
                   title="Registre um novo cliente na base de dados do hotel">

                  <div class="thumbnail-icon">
                    <i class="fa fa-3x fa-user-plus"></i>
                  </div>

                  <div class="thumbnail-title">
                    <h2>
                      Cadastrar Novo
                    </h2>
                  </div>

                  <div class="thumbnail-description">
                    <p class="lead">
                      Registre um novo cliente na base de dados do hotel
                    </p>
                  </div>

                </a>

              </div>

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/clientes/consultar' />"
                   class="thumbnail text-center tooltip-bottom"
                   title="Busque por um cliente já cadastrado">

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
                      Visualizar dados do histórico
                      ou editar informações
                    </p>
                  </div>

                </a>

              </div>

              <div class="col-sm-3 visible-sm-inline-block"></div>

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/clientes/inativar' />"
                   class="thumbnail text-center tooltip-bottom"
                   title="Encontre o cliente e desative o cadastro">

                  <div class="thumbnail-icon">
                    <i class="fa fa-3x fa-user-times"></i>
                  </div>

                  <div class="thumbnail-title">
                    <h2>
                      Inativar Cliente
                    </h2>
                  </div>

                  <div class="thumbnail-description">
                    <p class="lead">
                      Caso não queira mais ser incomodado,
                      desative o cadastro
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
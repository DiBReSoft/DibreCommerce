<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/interno" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>

  <jsp:attribute name="paginaTitulo">
    Estadias
  </jsp:attribute>

  <jsp:attribute name="paginaHead">
    <!-- Adiciona CSS e outros que vão no <head> da página -->
    <style type="text/css">
      .listagem-estadias .panel-title a:hover,
      .listagem-estadias .panel-title a:focus {
        text-decoration: none;
        opacity: 0.75;
      }
    </style>
  </jsp:attribute>

  <jsp:attribute name="paginaBottom">
    <!-- Adiciona JavaScript e outros trecho que vão ao final da página -->
    <script type="text/javascript" src="<c:url value='/assets/js/interno/dibrecommerce-painel-de-controle.js' />"></script>
    <script type="text/javascript">
      $(document).ready(function () {
        $("#menu-estadias").addClass("active");
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
                  Estadias
                </strong>
              </h1>
            </div>

            <p class="lead">
              Opções relativas as estadias no hotel.
            </p>

            <div class="row">

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/estadias/iniciar' />"
                   class="thumbnail text-center tooltip-bottom"
                   title="Inicie ou crie uma estadia">

                  <div class="thumbnail-icon">
                    <i class="fa fa-3x fa-bed"></i>
                  </div>

                  <div class="thumbnail-title">
                    <h2>
                      Iniciar Nova
                    </h2>
                  </div>

                  <div class="thumbnail-description">
                    <p class="lead">
                      Abrir uma estadia previamente agendada
                      ou criar nova
                    </p>
                  </div>

                </a>

              </div>

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/estadias/consultar' />"
                   class="thumbnail text-center tooltip-bottom"
                   title="Busque por uma estadia">

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
                      Visualizar dados de uma estadia
                      ou editar detalhes
                    </p>
                  </div>

                </a>

              </div>

              <div class="col-sm-3 visible-sm-inline-block"></div>

              <div class="col-md-4 col-sm-6">

                <a href="<c:url value='/admin/estadias/cancelar' />"
                   class="thumbnail text-center tooltip-bottom"
                   title="Encontre uma estadia para cancelá-la">

                  <div class="thumbnail-icon">
                    <i class="fa fa-3x fa-search-minus"></i>
                  </div>

                  <div class="thumbnail-title">
                    <h2>
                      Cancelar
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

        <div class="page-header">
          <h1>
            Previstas para hoje
            <small>
              dd/mm/aaaa
            </small>
          </h1>
        </div>

        <div class="row listagem-estadias">

          <div class="col-sm-4">

            <div class="panel-group" role="tablist">
              <div class="panel panel-default">
                <div class="panel-heading" role="tab" id="collapseListGroupHeading1">
                  <h4 class="panel-title">
                    <a class="collapsed" role="button" data-toggle="collapse" href="#collapseListGroup1" aria-expanded="false" aria-controls="collapseListGroup1">
                      <span class="label label-primary">00h00</span>
                      <strong>
                        Quarto XXXX
                      </strong>
                      <span class="label label-success pull-right tooltip-top"
                            title="Paga">
                        <i class="fa fa-check"></i>
                      </span>
                    </a>
                  </h4>
                </div>
                
                <div id="collapseListGroup1" class="panel-collapse collapse" role="tabpanel" aria-labelledby="collapseListGroupHeading1">
                  
                  <ul class="list-group">
                    
                    <li class="list-group-item">

                      <div class="row">

                        <div class="col-sm-6 text-overflow">

                          <i class="fa fa-fw fa-user"></i>
                          Nome do Cliente
                          Nome do Cliente
                          Nome do Cliente
                          
                        </div>

                        <div class="col-sm-6">

                          <i class="fa fa-fw fa-barcode"></i>
                          000.111.222-33
                          
                        </div>

                      </div>

                    </li>
                    
                    <li class="list-group-item text-overflow">
                      
                      <i class="fa fa-fw fa-envelope"></i>
                      cliente@email.com.br
                      
                    </li>
                    
                    <li class="list-group-item text-overflow">
                      
                      <i class="fa fa-fw fa-info-circle"></i>
                      Agendada em dd/mm/aaaa via e-commerce
                      
                    </li>
                    
                  </ul>
                  
                  <div class="panel-footer">
                    
                    <div class="row">
                      
                      <div class="col-sm-6">
                        
                        <a class="btn btn-block btn-sm btn-link">
                          CANCELAR
                        </a>
                        
                      </div>
                      
                      <div class="col-sm-6">
                        
                        <a class="btn btn-block btn-sm btn-primary">
                          INICIAR
                        </a>
                        
                      </div>
                      
                    </div>
                    
                  </div>
                  
                </div>
                
              </div>
              
            </div>

          </div>

        </div>

      </div>

    </section>

    <!-- Conteúdo da página index.jsp -->
  </jsp:body>

</t:template>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>

  <jsp:attribute name="paginaTitulo">
    Início
  </jsp:attribute>

  <jsp:attribute name="paginaHead">
    <!-- Adiciona CSS e outros que vão no <head> da página -->
    <script type="text/javascript" src="<c:url value="http://code.jquery.com/jquery-1.8.2.js" />"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/datepicker.css" />" />
  </jsp:attribute>

  <jsp:attribute name="paginaBottom">
    
  </jsp:attribute>

  <jsp:body>
    <!-- Conteúdo da página index.jsp -->
    <header class="jumbotron">

      <div class="container-fluid">

        <h1>Promoções</h1>
        <p>
          lebre hotel está com uma promoção imperdivel!!!
        </p>
        <p>
          <a class="btn btn-primary btn-lg">
            Clique aqui
          </a>
        </p>

      </div>

    </header>

    <section>

      <div class="container-fluid">
            <div class="panel panel-primary col-lg-6">
              <div class="panel-heading">
                <h3 class="panel-title">Hotéis</h3>
              </div>
              <div class="panel-body">
<div class="form-group">
  <label class="control-label" for="focusedInput">Onde quer ficar?</label>
  <input class="form-control" id="focusedInput" type="text" placeholder="Cidade ou Hotel...">
</div>

            <th>Entrada: <input type="text" class="span2" value="" id="dpd1"></th>
            <th>Saída: <input type="text" class="span2" value="" id="dpd2"></th>

            </div>
                <a href="#" class="btn btn-primary">Buscar</a>
 </div>
                 <div class="panel panel-success col-lg-6">
              <div class="panel-heading">
                <h3 class="panel-title">RECOMENDAMOS PARA VOCÊ</h3>
              </div>
              <div class="panel-body">
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

    </section>

    <!-- Conteúdo da página index.jsp -->
    <script>
    $(document).ready(function () {
    $(function () {
        $('.span2').datepicker({
            
        });

    });
});
</script>
  </jsp:body>

</t:template>
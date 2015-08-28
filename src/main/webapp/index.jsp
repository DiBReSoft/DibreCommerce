<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>

  <jsp:attribute name="paginaTitulo">
    Início
  </jsp:attribute>

  <jsp:attribute name="paginaHead">
    <!-- Adiciona CSS e outros que vão no <head> da página -->
  </jsp:attribute>

  <jsp:attribute name="paginaBottom">
    <!-- Adiciona JavaScript e outros trecho que vão ao final da página -->
  </jsp:attribute>

  <jsp:body>
    <!-- Conteúdo da página index.jsp -->
    <header class="jumbotron">

      <div class="container-fluid">

        <h1>Jumbotron</h1>
        <p>
          This is a simple hero unit, a simple jumbotron-style component for 
          calling extra attention to featured content or information.
        </p>
        <p>
          <a class="btn btn-primary btn-lg">
            Learn more
          </a>
        </p>

      </div>

    </header>

    <section>

      <div class="container-fluid">

        <h1>
          Conteúdo
        </h1>

        <p>
          Hello, Page
        </p>

      </div>

    </section>

    <!-- Conteúdo da página index.jsp -->
  </jsp:body>

</t:template>
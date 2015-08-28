<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/interno" %>
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

    <section>

      <div class="container-fluid">

        <h1>
          Hello World
        </h1>

        <div class="row">

          <div class="col-sm-4">
            <h3>
              Exemplo
            </h3>
            <p>
              Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis.
              Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis
              santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis
              mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois
              paga. Sapien in monti palavris qui num significa nadis i pareci latim.
              Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.
            </p>
          </div>

          <div class="col-sm-4">
            <h3>
              Exemplo
            </h3>
            <p>
              Suco de cevadiss, é um leite divinis, qui tem lupuliz, matis, aguis e
              fermentis. Interagi no mé, cursus quis, vehicula ac nisi. Aenean vel
              dui dui. Nullam leo erat, aliquet quis tempus a, posuere ut mi. Ut
              scelerisque neque et turpis posuere pulvinar pellentesque nibh
              ullamcorper. Pharetra in mattis molestie, volutpat elementum justo.
              Aenean ut ante turpis. Pellentesque laoreet mé vel lectus scelerisque
              interdum cursus velit auctor. Lorem ipsum dolor sit amet, consectetur
              adipiscing elit. Etiam ac mauris lectus, non scelerisque augue. Aenean
              justo massa.
            </p>
          </div>

          <div class="col-sm-4">
            <h3>
              Exemplo
            </h3>
            <p>
              Casamentiss faiz malandris se pirulitá, Nam liber tempor cum soluta
              nobis eleifend option congue nihil imperdiet doming id quod mazim
              placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer
              Ispecialista im mé intende tudis nuam golada, vinho, uiski, carirí,
              rum da jamaikis, só num pode ser mijis. Adipiscing elit, sed diam
              nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat
              volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation
              ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat.
            </p>
          </div>

        </div>

      </div>

    </section>

    <!-- Conteúdo da página index.jsp -->
  </jsp:body>

</t:template>
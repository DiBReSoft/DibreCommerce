<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-fixed-top navbar-inverse">

  <div class="container">

    <div class="navbar-header">

      <button type="button" class="navbar-toggle collapsed" 
              data-toggle="collapse" data-target="#navbar" 
              aria-expanded="false" aria-controls="navbar">
        <span class="sr-only">Navegação</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="<c:url value='/' />"
         title="Voltar ao início">
        Lebre Hotel
      </a>
    </div>

    <div id="navbar" class="navbar-collapse collapse">

      <ul class="nav navbar-nav">
        <li>
          <a href="<c:url value='/hoteis' />"
             title="Conheça as unidades">
            Hotéis
          </a>
        </li>
        <li>
          <a href="<c:url value='/promocoes' />"
             title="Aproveite nossas ofertas">
            Promoções
          </a>
        </li>
        <li>
          <a href="<c:url value='/contato' />"
             title="Fale conosco p/ dúvidas">
            Contato
          </a>
        </li>
      </ul>

      <button class="navbar-btn navbar-right btn btn-default tooltip-bottom"
              data-toggle="modal" data-target="#login"
              title="Acesse sua conta para reservar ou gerenciar suas reservas">
        <i class="fa fa-fw fa-lg fa-user"></i>
      </button>

      <button class="navbar-btn navbar-right btn btn-primary tooltip-bottom"
              title="Reservas que você já selecionou">
        <i class="fa fa-fw fa-lg fa-suitcase"></i>
        Minhas Reservas
      </button>

      <!--
      <form class="navbar-form navbar-right"
            method="GET" action="/LebreHotel/">
        <div class="form-group">
          <input type="text" placeholder="Ex.: Hotel na praia" 
                 class="form-control"
                 name="q" id="q" />
        </div>
        <button type="submit" class="btn btn-primary"
                title="Pressione para pesquisar">
          <span class="glyphicon glyphicon-search"></span>
          Buscar
        </button>
      </form>
      -->

    </div><!--/.navbar-collapse -->

  </div>

</nav>
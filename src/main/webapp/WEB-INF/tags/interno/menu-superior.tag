<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav id="navbar" class="navbar navbar-fixed-top navbar-inverse">

  <div class="container-fluid">

    <div class="navbar-header">

      <button type="button" class="navbar-toggle collapsed"
              data-toggle="collapse" data-target="#navbar-principal">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand tooltip-bottom" 
         href="<c:url value="/admin/" />"
         title="Ir a p�gina inicial">
        <strong>
          Lebre Hotel
        </strong>
        <small>
          <i class="fa fa-fw fa-lg fa-bolt"></i>
        </small>
        Admin
      </a>

    </div>

    <div class="collapse navbar-collapse" id="navbar-collapse">

      <ul class="nav navbar-nav">

        <li class="dropdown" id="menu-clientes">
          <a href="<c:url value="/admin/clientes" />"
             title="Opera��es relativas a Clientes"
             class="dropdown-toggle" data-toggle="dropdown" 
             role="button" aria-expanded="false">
            Clientes <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="<c:url value="/admin/clientes/cadastrar" />">
                Cadastrar
              </a>
            </li>
            <li>
              <a href="<c:url value="/admin/clientes/consultar" />">
                Consultar / Editar
              </a>
            </li>
            <li class="divider"></li>
            <li>
              <a href="<c:url value="/admin/clientes/inativar" />">
                Inativar
              </a>
            </li>
          </ul>
        </li>

        <li class="dropdown" id="menu-reservas">
          <a href="<c:url value="/admin/reservas" />" 
             title="Opera��es relativas as Reservas"
             class="dropdown-toggle" data-toggle="dropdown" 
             role="button" aria-expanded="false">
            Reservas <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="<c:url value="/admin/reservas/agendar" />">
                Agendar
              </a>
            </li>
            <li>
              <a href="<c:url value="/admin/reservas/consultar" />">
                Consultar / Editar
              </a>
            </li>
            <li class="divider"></li>
            <li>
              <a href="<c:url value="/admin/reservas/cancelar" />">
                Cancelar
              </a>
            </li>
          </ul>
        </li>

        <li class="dropdown" id="menu-estadias">
          <a href="<c:url value="/admin/estadias" />" 
             title="Opera��es relativas as Estadias"
             class="dropdown-toggle" data-toggle="dropdown" 
             role="button" aria-expanded="false">
            Estadias <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="<c:url value="/admin/estadias/iniciar" />">
                Iniciar
              </a>
            </li>
            <li>
              <a href="<c:url value="/admin/estadias/consultar" />">
                Consultar / Editar
              </a>
            </li>
            <li>
              <a href="<c:url value="/admin/estadias/encerrar" />">
                Encerrar
              </a>
            </li>
          </ul>
        </li>

      </ul>

      <ul class="nav navbar-nav navbar-right">

        <li class="dropdown" id="menu-gerenciar">
          <a href="<c:url value="/admin/gerenciar" />" 
             title="Opera��es relativas ao Gerencimento"
             class="dropdown-toggle tooltip-left" data-toggle="dropdown" 
             role="button" aria-expanded="false">
            Ger�ncia <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="<c:url value="/admin/gerenciar/funcionario" />">
                Funcion�rios
              </a>
            </li>
            <li>
              <a href="<c:url value="/admin/gerenciar/quarto" />">
                Quartos
              </a>
            </li>
            <li>
              <a href="<c:url value="/admin/gerenciar/unidade" />">
                Unidades
              </a>
            </li>
            <li>
              <a href="<c:url value="/admin/relatorios" />">
                Relat�rios
              </a>
            </li>
          </ul>
        </li>
        
        <li class="disabled">
          <a class="tooltip-bottom cursor-help"
             title="Unidade de Opera��o">
            <i class="fa fa-map-marker"></i>
            <span class="hidden-sm">
              <c:out value="${sessionScope.usuario.unidadeNome}" />
              S�o Paulo
            </span>
            <span class="visible-sm-inline-block">
              <c:out value="${sessionScope.usuario.unidadeUF}" />
              SP
            </span>
          </a>
        </li>
        <li>
          <div class="btn-group navbar-btn">
            <button type="button" id="usuarioNomeBotao"
                    class="btn btn-default tooltip-bottom"
                    title="Visualizar perfil"
                    onclick="location.href='<c:url value="/admin/perfil" />'">
              <c:out value="${sessionScope.usuario.nome}" />
              Nome do Usu�rio
            </button>
            <button type="button" 
                    class="btn btn-default dropdown-toggle tooltip-left"
                    title="Op��es Exclusivas"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="caret"></span>
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <ul class="dropdown-menu">
              <li>
                <a href="<c:url value="/admin/perfil" />">
                  <i class="fa fa-fw fa-user"></i>
                  PERFIL
                </a>
              </li>
              <li>
                <a data-toggle="modal" data-target="#selecionarTema">
                  <i class="fa fa-fw fa-paint-brush"></i>
                  TEMA
                </a>
              </li>
              <li role="separator" class="divider"></li>
              <li>
                <a href="<c:url value="/admin/logout" />">
                  <i class="fa fa-fw fa-power-off"></i>
                  ENCERRAR SESS�O
                </a>
              </li>
            </ul>
          </div>
        </li>
      </ul>

    </div>

  </div>

</nav>
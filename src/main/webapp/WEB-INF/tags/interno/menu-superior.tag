<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav id="navbar" class="navbar navbar-fixed-top navbar-default">

  <div class="container-fluid">

    <div class="navbar-header">

      <button type="button" class="navbar-toggle collapsed"
              data-toggle="collapse" data-target="#navbar-collapse">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand tooltip-right" 
         href="<c:url value="/admin/" />"
         title="Ir ao início">
        <strong>
          <span class="hidden-sm">
            Lebre Hotel
          </span>
          <span class="visible-sm-inline-block">
            L.H.
          </span>
        </strong>
        <small class="hidden-sm">
          <i class="fa fa-fw fa-lg fa-bolt"></i>
        </small>
        Admin
      </a>

    </div>

    <div class="collapse navbar-collapse" id="navbar-collapse">

      <ul class="nav navbar-nav navbar-right">

        <li class="dropdown" id="menu-gerenciar">
          <a href="<c:url value="/admin/gerenciar" />" 
             title="Operações relativas ao Gerencimento"
             class="dropdown-toggle tooltip-left" data-toggle="dropdown" 
             role="button" aria-expanded="false">
            Gerência <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="<c:url value="/admin/gerenciar/funcionario" />">
                Funcionários
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
                Relatórios
              </a>
            </li>
          </ul>
        </li>

        <li class="disabled">
          <a class="tooltip-bottom cursor-help"
             title="Unidade de Operação">
            <i class="fa fa-map-marker"></i>
            <span class="hidden-sm">
              <c:out value="${sessionScope.usuario.unidadeNome}" />
              São Paulo
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
                    class="btn btn-success tooltip-bottom"
                    title="Visualizar perfil"
                    onclick="location.href = '<c:url value="/admin/perfil" />'">
              <c:out value="${sessionScope.usuario.nome}" />
              Nome do Usuário
            </button>
            <button type="button" 
                    class="btn btn-success dropdown-toggle tooltip-left"
                    title="Opções Exclusivas"
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
                  ENCERRAR SESSÃO
                </a>
              </li>
            </ul>
          </div>
        </li>
      </ul>

    </div>

  </div>

</nav>
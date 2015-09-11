<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<header role="banner">

  <div class="drawer-header">
    <button type="button" class="drawer-toggle drawer-hamburger">
      <span class="sr-only">toggle navigation</span> 
      <span class="drawer-hamburger-icon"></span>
    </button>
  </div>

  <div class="drawer-main drawer-default">

    <nav class="drawer-nav" role="navigation">

      <div class="drawer-brand">
        <a href="<c:url value="/admin" />"
           title="Ir ao início"
           class="tooltip-right">
          Painel de Controle
        </a>
      </div>

      <ul class="drawer-menu">

        <li class="drawer-menu-item dropdown drawer-dropdown" id="menu-clientes">
          <a href="<c:url value="/admin/clientes" />"
             title="Operações relativas a Clientes"
             data-toggle="dropdown" 
             role="button" aria-expanded="false"
             class="tooltip-right">
            Clientes <span class="caret"></span>
          </a>
          <ul class="drawer-submenu dropdown-menu" role="menu">
            <li class="drawer-submenu-item">
              <a href="<c:url value="/admin/clientes/cadastrar" />">
                Cadastrar
              </a>
            </li>
            <li class="drawer-submenu-item">
              <a href="<c:url value="/admin/clientes/consultar" />">
                Consultar / Editar
              </a>
            </li>
            <li class="drawer-submenu-item">
              <a href="<c:url value="/admin/clientes/inativar" />">
                Inativar
              </a>
            </li>
          </ul>
        </li>

        <li class="drawer-menu-item dropdown drawer-dropdown" id="menu-reservas">
          <a href="<c:url value="/admin/reservas" />" 
             title="Operações relativas as Reservas"
             data-toggle="dropdown" 
             role="button" aria-expanded="false"
             class="tooltip-right">
            Reservas <span class="caret"></span>
          </a>
          <ul class="drawer-submenu dropdown-menu" role="menu">
            <li class="drawer-submenu-item">
              <a href="<c:url value="/admin/reservas/agendar" />">
                Agendar
              </a>
            </li>
            <li class="drawer-submenu-item">
              <a href="<c:url value="/admin/reservas/consultar" />">
                Consultar / Editar
              </a>
            </li>
            <li class="drawer-submenu-item">
              <a href="<c:url value="/admin/reservas/cancelar" />">
                Cancelar
              </a>
            </li>
          </ul>
        </li>

        <li class="drawer-menu-item dropdown drawer-dropdown" id="menu-estadias">
          <a href="<c:url value="/admin/estadias" />" 
             title="Operações relativas as Estadias"
             data-toggle="dropdown" 
             role="button" aria-expanded="false"
             class="tooltip-right">
            Estadias <span class="caret"></span>
          </a>
          <ul class="drawer-submenu dropdown-menu" role="menu">
            <li class="drawer-submenu-item">
              <a href="<c:url value="/admin/estadias/iniciar" />">
                Iniciar
              </a>
            </li>
            <li class="drawer-submenu-item">
              <a href="<c:url value="/admin/estadias/consultar" />">
                Consultar / Editar
              </a>
            </li>
            <li class="drawer-submenu-item">
              <a href="<c:url value="/admin/estadias/encerrar" />">
                Encerrar
              </a>
            </li>
          </ul>
        </li>

      </ul>

      <div class="drawer-footer">
        <span>
          Rodapé do Menu Lateral
        </span>
      </div>

    </nav>

  </div>

</header>
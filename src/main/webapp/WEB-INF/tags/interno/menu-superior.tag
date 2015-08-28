<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<nav class="navbar navbar-fixed-top navbar-default">

  <div class="container-fluid">

    <div class="navbar-header">

      <button type="button" class="navbar-toggle collapsed"
              data-toggle="collapse" data-target="#navbar-principal">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" 
         href="<c:url value="/" />"
         title="Página Inicial">
        <strong>
          DibreCommerce
        </strong>
        <small>
          <i class="fa fa-fw fa-lg fa-cart-plus"></i>
        </small>
        Admin
      </a>

    </div>

    <div class="collapse navbar-collapse" id="navbar-principal">

      <ul class="nav navbar-nav">
        <li>
          <a href="#">
            Link
          </a>
        </li>
        <li>
          <a href="#">
            Link
          </a>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" 
             role="button" aria-expanded="false">
            Dropdown <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="#">
                Action
              </a>
            </li>
            <li class="divider"></li>
            <li>
              <a href="#">
                Separated link
              </a>
            </li>
          </ul>
        </li>
      </ul>

      <ul class="nav navbar-nav navbar-right">
        <li>
          <a href="#">
            Link
          </a>
        </li>
        <li>
          <div class="btn-group navbar-btn">
            <button type="button" class="btn btn-primary">
              Nome do Usuário
            </button>
            <button type="button" class="btn btn-primary dropdown-toggle"
                    data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="caret"></span>
              <span class="sr-only">Toggle Dropdown</span>
            </button>
            <ul class="dropdown-menu">
              <li>
                <a href="<c:url value="/admin/meu-cadastro" />">
                  <i class="fa fa-fw fa-edit"></i>
                  MEU CADASTRO
                </a>
              </li>
              <li>
                <a data-toggle="modal" data-target="#selecionarTema">
                  <i class="fa fa-fw fa-paint-brush"></i>
                  ALTERAR TEMA
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
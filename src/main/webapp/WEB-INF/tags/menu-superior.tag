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
        Lebre Hotel 
      </a>
         
    </div>

    <div class="collapse navbar-collapse" id="navbar-principal">
      
      <form class="navbar-form navbar-right" role="search"
            action="buscar" name="buscar" id="buscar">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Procurando algo ?" 
                 name="q" id="q" required="required" />
        </div>
        <button type="submit" class="btn btn-primary"
                title="Buscar">
          <i class="fa fa-fw fa-search"></i>
          <span class="visible-xs-inline-block">Buscar</span>
        </button>
      </form>
      
      <ul class="nav navbar-nav navbar-right">
        <li>
          <a href="#">
            Hoteis
          </a>
        </li>
        <li>
          <a href="#">
            Promoções
          </a>
        </li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" 
             role="button" aria-expanded="false">
            Acesso <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li>
              <a href="#">
                Entrar
              </a>
            </li>
            <li class="divider"></li>
            <li>
              <a href="#">
                Cadastra-se
              </a>
            </li>
          </ul>
        </li>
      </ul>
      
    </div>
         
  </div>
         
</nav>
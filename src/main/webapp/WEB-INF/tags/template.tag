<%@tag description="Overall Page template" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@attribute name="paginaTitulo" fragment="true" %>
<%@attribute name="paginaHead" fragment="true" %>
<%@attribute name="paginaBottom" fragment="true" %>
<!DOCTYPE html>
<html>

  <head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <meta name="author" content="Luciano Lourenço, Thiago de Melo, Fabio Ernani, Udimberto Junior" />

    <title>
      <jsp:invoke fragment="paginaTitulo"/>
      | Lebre Hotel
    </title>

    <link rel="shortcut icon" href="<c:url value="/assets/img/favicon-lebrehotel.ico" />" type="image/x-icon" />

    <!-- CSS Base -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/bootstrap_bootswatch-flaty.min.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/dibrecommerce.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/font-awesome-4.4.0.min.css" />" />

    <jsp:invoke fragment="paginaHead"/>

  </head>

  <body>

    <t:menu-superior />

    <jsp:doBody />

    <t:rodape />

    <!-- JS Base -->
    <script type="text/javascript" src="<c:url value="/assets/js/jquery-1.11.3.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/bootstrap.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/bootstrap-datepicker.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/bootstrap-datepicker.pt-BR.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/dibrecommerce.js" />"></script>

    <jsp:invoke fragment="paginaBottom"/>

    <!-- Modal para seleção de Tema do Sistema -->
    <div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="loginLabel">
      <div class="modal-dialog modal-sm" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Fechar">
              <span aria-hidden="true">
                x
              </span>
            </button>
            <h3 class="modal-title" id="loginLabel">
              Entrar
              <small>
                Faça uma nova reserva ou gerencie as existentes
              </small>
            </h3>
          </div>

          <div class="modal-body text-center">

            <form class="form-horizontal"
                  method="post" action="login">

              <label for="usuarioCredencial">
                Login:
              </label>
              <input type="text" class="form-control"
                     name="usuarioCredencial" id="usuarioCredencial"
                     placeholder="Endereço de e-mail" />

              <label for="usuarioSenha">
                Senha:
              </label>
              <input type="password" class="form-control"
                     name="usuarioSenha" id="usuarioSenha"
                     placeholder="*************" />

              <button type="submit" class="btn btn-block btn-sm btn-primary">
                LOGIN
              </button>

              <a role="button" class="btn btn-block btn-sm btn-link"
                 href="/LebreHotel/recuperar-senha">
                RECUPERAR SENHA
              </a>

            </form>

          </div>

          <div class="modal-footer">

            <a role="button" class="btn btn-block btn-sm btn-success"
               href="<c:url value='/me-cadastrar.jsp' />">
              ME CADASTRAR
            </a>

            <!--
            <label class="text-center">
              OU
              <br />
              cadastra-se com redes sociais
            </label>
            -->

          </div>

        </div>
      </div>
    </div>
    <!-- Modal para seleção de Tema do Sistema -->

  </body>

</html>
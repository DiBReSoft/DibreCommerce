<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>

  <jsp:attribute name="paginaTitulo">
    Me cadastrar
  </jsp:attribute>

  <jsp:attribute name="paginaHead">
    <!-- Adiciona CSS e outros que vão no <head> da página -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/bootstrap-datepicker.min.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/bootstrap-toggle.css" />" />
  </jsp:attribute>

  <jsp:attribute name="paginaBottom">
    <!-- Adiciona JS e outros que vão no final da página -->

    <script type="text/javascript" src="<c:url value="/assets/js/jquery.maskedinput.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/bootstrap-toggle.min.js" />"></script>
    <script type="text/javascript">


      $(document).ready(function () {

        $("#cadastroNewsletter").bootstrapToggle();

        $('#cadastroRG').mask('**.999.999-*');
        $('#cadastroCPF').mask('999.999.999-99');
        $('#cadastroNascimento').mask('**/**/****');

        // verificação de email
        $("#cadastroEmail").focus(function () {
          $("#cadastroEmailContainer .input-group").removeClass("has-success");
        });
        $("#cadastroEmail").blur(function () {
          var email = $("#cadastroEmail");
          if (email.val() !== "") {
            if (!(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(email.val()))) {
              $("#cadastroEmailContainer .input-group").addClass("has-error");
              email.focus();
              return false;
            } else {
              $("#cadastroEmailContainer .input-group").removeClass("has-error");
              $("#cadastroEmailContainer .input-group").addClass("has-success");
            }
          }
        });
        // verificação de email

      });

    </script>

  </jsp:attribute>

  <jsp:body>
    <!-- Conteúdo da página me-cadastrar.jsp -->

    <!-- TOPO, COM O TÍTULO DA PÁGINA -->
    <header class="header-generico bg-primary">

      <div class="container">

        <h1>
          Me cadastrar
        </h1>

      </div>

    </header>
    <!-- TOPO, COM O TÍTULO DA PÁGINA -->

    <section>

      <div class="container">

        <h1 style="margin-top: 0;">
          Identificação
        </h1>

        <p class="lead">
          Cadastre-se na rede de hotéis que mais surpreende no Brasil 
          (não se preocupe, seus dados serão protegidos), aproveite promoções, 
          ofertas exclusivas e agilize suas reservas.
        </p>

        <div class="row">

          <div class="col-md-2"></div>

          <div class="col-md-8">

            <div class="panel panel-primary">

              <div class="panel-body">

                <div class="hidden-sm hidden-xs" style="padding: 8px 0px;"></div>

                <!-- Guia de uso dos Forms: http://getbootstrap.com/css/#forms -->
                <form class="form-me-cadastrar"
                      method="post" action="reservar" enctype="utf-8">

                  <div class="col-md-8">

                    <div class="form-group" id="cadastroNomeContainer">

                      <label for="cadastroNome">
                        Nome completo:
                      </label>

                      <div class="input-group">

                        <div class="input-group-addon">

                          <label for="cadastroNome">

                            <i class="fa fa-fw fa-user"></i>

                          </label>

                        </div>

                        <input type="text" class="form-control" 
                               id="cadastroNome" name="cadastroNome" />

                      </div>

                    </div>

                  </div>

                  <div class="col-md-4">

                    <div class="form-group">

                      <label class="control-label" for="cadastroSexo">
                        Sexo:
                      </label>

                      <div class="input-group">

                        <div class="input-group-addon">

                          <label for="cadastroSexo">

                            <i class="fa fa-fw fa-venus-mars"></i>

                          </label>

                        </div>

                        <select class="form-control" 
                                id="cadastroSexo" name="cadastroSexo">
                          <option disabled="disabled" selected>
                            Selecionar opção
                          </option>
                          <option value="f">
                            Feminino
                          </option>
                          <option value="m">
                            Masculino
                          </option>
                        </select>

                      </div>

                    </div>

                  </div>

                  <div class="clearfix"></div>

                  <div class="col-md-4">

                    <div class="form-group" id="cadastroNascimentoContainer">

                      <label for="cadastroNascimento">
                        Data de Nascimento:
                      </label>

                      <div class="input-group">

                        <div class="input-group-addon">

                          <label for="cadastroNascimento">
                            <i class="fa fa-fw fa-calendar"></i>
                          </label>

                        </div>

                        <input type="text" class="form-control init-datepicker" 
                               id="cadastroNascimento" name="cadastroNascimento" />

                      </div>

                    </div>

                  </div>

                  <div class="col-md-4">

                    <div class="form-group" id="cadastroCPFContainer">

                      <label for="cadastroCPF"
                             title="Cadastro de Pessoa Física dos Cidadãos Brasileiros">
                        CPF:
                      </label>

                      <div class="input-group">

                        <div class="input-group-addon">

                          <label for="cadastroCPF">
                            <i class="fa fa-fw fa-barcode"></i>
                          </label>

                        </div>

                        <input type="text" class="form-control" 
                               id="cadastroCPF" name="cadastroCPF" />

                      </div>

                    </div>

                  </div>

                  <div class="col-md-4">

                    <div class="form-group" id="cadastroRGContainer">

                      <label for="cadastroRG"
                             title="Registro Geral dos Cidadãos Brasileiros">
                        RG:
                      </label>

                      <div class="input-group">

                        <div class="input-group-addon">

                          <label for="cadastroRG">
                            <i class="fa fa-fw fa-barcode"></i>
                          </label>

                        </div>

                        <input type="text" class="form-control" 
                               id="cadastroRG" name="cadastroRG" />

                      </div>

                    </div>

                  </div>

                  <div class="clearfix"></div>

                  <div class="col-md-8">

                    <div class="form-group" id="cadastroEmailContainer">

                      <label for="cadastroEmail"
                             title="Registro Geral dos Cidadãos Brasileiros">
                        E-mail:
                      </label>

                      <div class="input-group">

                        <div class="input-group-addon">

                          <label for="cadastroEmail">
                            <i class="fa fa-fw fa-envelope"></i>
                          </label>

                        </div>

                        <input type="email" class="form-control" 
                               id="cadastroEmail" name="cadastroEmail" />

                      </div>

                    </div>

                  </div>

                  <div class="col-md-4">

                    <div class="form-group" id="cadastroNewsletterContainer">

                      <label title="Informes, promoções e ofertas exclusivas por e-mail">
                        Aceita <span class="hidden-md">receber</span> Newsletter?
                      </label>

                      <div class="checkbox" style="margin: 0;">

                        <label>
                          <input type="checkbox" checked="true" 
                                 data-toggle="toggle" 
                                 data-on="<i class='fa fa-check-circle'></i> SIM" 
                                 data-off="<i class='fa fa-times-circle'></i> NÃO"
                                 id="cadastroNewsletter" name="cadastroNewsletter"  />
                          via e-mail
                        </label>                        

                      </div>

                    </div>

                  </div>

                  <div class="clearfix"></div>

                  <div class="row form-me-cadastrar-botoes">

                    <div class="col-md-2"></div>

                    <div class="col-md-4">

                      <button id="cadastroLimpar" type="reset" class="btn btn-block btn-link">
                        LIMPAR<i class="fa fa-fw fa-lg fa-eraser"></i>
                      </button>

                    </div>

                    <div class="col-md-4">

                      <button id="cadastroCadastrar" type="button" class="btn btn-block btn-primary disabled">
                        <i class="fa fa-fw fa-lg fa-check"></i>CADASTRAR
                      </button>

                    </div>

                  </div>

                </form>        

              </div>

              <div class="panel-footer text-center">

                Lebre Hotel | Nos melhores locais

              </div>

            </div>

          </div>

        </div>

      </div>

    </section>

    <!-- Conteúdo da página me-cadastrar.jsp -->

  </jsp:body>

</t:template>
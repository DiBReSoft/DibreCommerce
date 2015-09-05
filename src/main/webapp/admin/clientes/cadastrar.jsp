<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/interno" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<t:template>

  <jsp:attribute name="paginaTitulo">
    Cadastrar Cliente
  </jsp:attribute>

  <jsp:attribute name="paginaHead">
    <!-- Adiciona CSS e outros que vão no <head> da página -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/jquery-ui.min.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/bootstrap-toggle.css" />" />
  </jsp:attribute>

  <jsp:attribute name="paginaBottom">
    <!-- Adiciona JavaScript e outros trecho que vão ao final da página -->
    <script type="text/javascript" src="<c:url value='/assets/js/interno/dibrecommerce-painel-de-controle.js' />"></script>
    <script type="text/javascript">
      $(document).ready(function () {
        $("#menu-clientes").addClass("active");
      });
    </script>
    <script type="text/javascript" src="<c:url value="/assets/js/jquery-ui.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/jquery.maskedinput.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/jquery.numeric.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/bootstrap-toggle.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/cadastrar.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/validacoes.js" />"></script>
  </jsp:attribute>

  <jsp:body>
    <!-- Conteúdo da página index.jsp -->

    <section>

      <div class="container-fluid">

        <div class="row painel-opcoes">

          <div class="col-md-9">

            <div class="page-header">
              <h1>
                Painel 
                / 
                <strong>
                  Clientes
                </strong>
                /
                Cadastrar
              </h1>
            </div>

            <!-- Início do Formulário -->
            <form role="form" method="post" class="form-di"
                  action="cadastrar"
                  accept-charset="UTF-8"
                  enctype="application/x-www-form-urlencoded">

              <!-- Início:- DADOS -->
              <h3>
                Dados
              </h3>

              <hr />

              <div class="row">

                <div class="col-sm-6 col-xs-5">
                  <div class="form-group">
                    <label for="formNome">
                      Nome:
                    </label>
                    <input type="text" class="form-control"
                           tabindex="1"
                           name="formNome" id="formNome" 
                           placeholder="Fulano"
                           required />
                  </div>

                </div>

                <div class="col-sm-6 col-xs-7">

                  <div class="form-group">
                    <label for="formSobrenome">
                      Sobrenome:
                    </label>
                    <input type="text" class="form-control" 
                           tabindex="2"
                           name="formSobrenome" id="formSobrenome"
                           placeholder="da Silva"
                           required />
                  </div>

                </div>
                
              </div>
              
              <div class="row">

                <div class="col-sm-4">

                  <div class="form-group">
                    <label for="formSexo">
                      Sexo:
                    </label>
                    <select class="form-control"
                            tabindex="3"
                            name="formSexo" id="formSexo"                         
                            placeholder="Sexo"
                            required>
                      <option selected disabled>
                        Selecionar...
                      </option>
                      <option value="M">
                        Masculino
                      </option>
                      <option value="F">
                        Feminino
                      </option>
                    </select>
                  </div>

                </div>

                <div class="col-sm-4 col-xs-6">

                  <div class="form-group">                    
                    <label for="formRg">
                      RG:
                    </label>                  
                    <input type="text" class="form-control"
                           tabindex="4"
                           name="formRg" id="formRg" 
                           placeholder="RG" 
                           maxlength="50" />
                  </div>

                </div>

                <div class="col-sm-4 col-xs-6">

                  <div class="form-group">                    
                    <label for="formCpf">
                      CPF:
                    </label>
                    <input type="text" class="form-control"
                           tabindex="5"
                           name="formCpf" id="formCpf" 
                           placeholder="CPF" 
                           maxlength="50"
                           required />
                  </div>

                </div>
                
              </div>
              
              <div class="row">

                <div class="col-sm-4">

                  <div class="form-group">
                    <label for="formDataNasc">
                      Data de Nascimento:
                    </label>
                    <input type="text" class="form-control calendar" 
                           tabindex="6"
                           name="formDataNasc" id="formDataNasc" 
                           placeholder="DD/MM/AAAA"
                           required 
                           min="10"
                           maxlength="10" />
                  </div>

                </div>

                <div class="col-sm-4 col-xs-6">

                  <div class="form-group">
                    <label for="formTel">
                      Telefone:
                    </label>
                    <input type="tel" class="form-control" 
                           tabindex="7"
                           name="formTel" id="formTel"
                           placeholder="(11) 5555-5555" 
                           min="15"
                           maxlength="15" />
                  </div>

                </div>

                <div class="col-sm-4 col-xs-6">

                  <div class="form-group">
                    <label for="formCel">
                      Celular:
                    </label>
                    <input type="tel" class="form-control" 
                           tabindex="7"
                           name="formCel" id="formCel"
                           placeholder="(11) 9999-9999" 
                           maxlength="15" />
                  </div>

                </div>
                
              </div>
              
              <div class="row">

                <div class="col-sm-8">

                  <div class="form-group">
                    <label for="formEmail">
                      E-mail:
                    </label>
                    <input type="email" class="form-control" 
                           tabindex="8"
                           name="formEmail" id="formEmail"
                           placeholder="fulano@dasilva.com.br" />
                  </div>

                </div>

                <div class="col-sm-4 col-xs-5">

                  <div class="form-group">
                    <label for="formNewsletter"
                           title="E-mails com novidades do Hotel"
                           class="tooltip-right">
                      Newsletter:
                      <i class="fa fa-fw fa-question-circle hidden-xs"></i>
                    </label>
                    <br style="clear: both;" />
                    <input type="checkbox"
                           tabindex="9"
                           name="formNewsletter" id="formNewsletter"
                           value="1"
                           checked
                           data-toggle="toggle" 
                           data-on="Aceita" data-off="Recusa"
                           />
                  </div>

                </div>

              </div>

              <h3>
                Adicionais sobre o Cliente
              </h3>

              <hr />

              <div class="row" id="formHospede">

                <div class="col-sm-5">

                  <div class="form-group">
                    <label for="formCartao">
                      Número do Cartão:
                    </label>
                    <input type="text" class="form-control" 
                           tabindex="10"
                           name="formCartao" id="formCartao"
                           placeholder="0000 1111 2222 3333"
                           required
                           />
                  </div>

                </div>

                <div class="col-sm-3">                 

                  <div class="form-group">

                    <label for="formCartaoBandeira">
                      Bandeira:
                    </label>
                    <select class="form-control"
                            tabindex="11"
                            name="formCartaoBandeira" id="formCartaoBandeira"                         
                            placeholder="CartaoBandeira"
                            required>
                      <option selected disabled>
                        Selecionar...
                      </option>
                      <option value="visa">
                        VISA
                      </option>
                      <option value="master">
                        MasterCard
                      </option>
                      <option value="amex">
                        American Express
                      </option>
                    </select>
                  </div>

                </div>

                <div class="col-sm-4">

                  <label>
                    <i class="fa fa-lg fa-info"></i>
                  </label>
                  <div class="text-muted">
                    <i>
                      Informações necessária para fins de no-show.
                    </i>
                  </div>

                </div>

              </div>        
              <!-- Fim: DADOS -->

              <div style="padding: 10px 0px;"></div>

              <p>
                Os campos marcados com
                <i class="fa fa-fw fa-lg fa-asterisk"></i>
                são obrigatórios.
              </p>

              <div style="padding: 10px 0px;"></div>

              <!-- Linha de botões do formulário -->
              <div class="row">

                <div class="col-sm-2 hidden-xs"></div>

                <div class="col-sm-4 col-sm-push-4">

                  <button type="submit" 
                          class="btn btn-block btn-lg btn-success" 
                          tabindex="11">
                    <i class="fa fa-fw"></i>
                    SALVAR
                    <i class="fa fa-fw fa-lg fa-check-square"></i>
                  </button>

                </div>

                <div class="col-sm-4 col-sm-pull-4">

                  <button type="reset" class="btn btn-block btn-lg btn-link" 
                          tabindex="12">
                    <i class="fa fa-eraser"></i>
                    LIMPAR
                  </button>

                </div>

              </div>
              <!-- Linha de botões do formulário -->

              <div style="padding: 15px 0px;"></div>

            </form>
            <!-- Fim do Formulário -->

          </div>

          <div class="col-md-3">

            <div class="page-header">
              <h1>
                Infos
              </h1>
            </div>

            <p class="lead">
              Auxiliares ao Hotel
            </p>

            <t:box-infos-lateral />

          </div>

        </div>

      </div>

    </section>

    <!-- Conteúdo da página index.jsp -->
  </jsp:body>

</t:template>
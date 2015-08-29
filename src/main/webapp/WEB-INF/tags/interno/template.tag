<%@tag description="DibreInn-eCommerce" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="t" tagdir="/WEB-INF/tags/interno" %>
<%@attribute name="paginaTitulo" fragment="true" %>
<%@attribute name="paginaHead" fragment="true" %>
<%@attribute name="paginaBottom" fragment="true" %>
<html>

  <head>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <meta name="author" content="@DiBReSoft" />
    
    <link rel="icon" href="<c:url value="/assets/img/favicon-dibresoft.ico" />">

    <title>
      <jsp:invoke fragment="paginaTitulo"/>
      | DibreCommerce
    </title>

    <!-- CSS Base -->
    <link rel="stylesheet" type="text/css" media="all" href="<c:url value="/assets/css/bootstrap.css" />" id="coreCSS" />
    <link rel="stylesheet" type="text/css" media="all" href="<c:url value="/assets/css/interno/dibreinn-system.css" />" />
    <link rel="stylesheet" type="text/css" media="all" href="<c:url value="/assets/css/font-awesome-4.4.0.min.css" />" />

    <jsp:invoke fragment="paginaHead"/>

  </head>

  <body>

    <!-- NAVBAR FIXA -->
    <t:menu-superior />

    <!-- CONTEUDO -->
    <main>
      <jsp:doBody />
    </main>
    <!-- CONTEUDO -->

    <!-- RODAPE -->
    <t:rodape />
    <!-- RODAPE -->

    <!-- para usar com recursos que poderiam pesar o carregamento da página -->
    <div id="carregarConteudoExtra"></div>

    <!-- JS Base -->
    <script type="text/javascript" src="<c:url value="/assets/js/jquery-2.1.3.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/bootstrap.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/interno/dibrecommerce-admin.js" />"></script>

    <jsp:invoke fragment="paginaBottom"/>

  </body>

</html>
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
    <meta name="author" content="DiBReTeam" />

    <title>
      <jsp:invoke fragment="paginaTitulo"/>
      | Hotel XPTO
    </title>
    
    <link rel="icon" href="/assets/favicon.ico">

    <!-- CSS Base -->
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/bootstrap-bootswatch-cerulean.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/dibreinn-ecommerce.css" />" />
    <link rel="stylesheet" type="text/css" href="<c:url value="/assets/css/font-awesome-4.4.0.min.css" />" />

    <jsp:invoke fragment="paginaHead"/>

  </head>

  <body>
    
    <t:menu-superior />
    
    <jsp:doBody />

    <t:rodape />

    <!-- JS Base -->
    <script type="text/javascript" src="<c:url value="/assets/js/jquery-2.1.3.min.js" />"></script>
    <script type="text/javascript" src="<c:url value="/assets/js/bootstrap.min.js" />"></script>

    <jsp:invoke fragment="paginaBottom"/>

  </body>

</html>
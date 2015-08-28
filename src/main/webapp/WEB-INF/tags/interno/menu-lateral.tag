<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="list-group">

  <a href="<c:url value="/admin/index.jsp" />" 
     class="list-group-item active">
    
    <!-- �cone do Font-Awesome -->
    <i class="fa fa-fw fa-building"></i>
    
    <h4 class="list-group-item-heading">
      In�cio
    </h4>
    <p class="list-group-item-text hidden-sm hidden-xs">
      Breve descri��o
    </p>
    
  </a>

  <a href="<c:url value="/admin/reservas.jsp" />" 
     class="list-group-item">
    
    <!-- �cone do Font-Awesome -->    
    <i class="fa fa-fw fa-book"></i>
    
    <h4 class="list-group-item-heading">
      Reservas
    </h4>
    <p class="list-group-item-text hidden-sm hidden-xs">
      Breve descri��o
    </p>
    
  </a>

  <a href="<c:url value="/admin/relatorios.jsp" />" 
     class="list-group-item">
    
    <!-- �cone do Font-Awesome -->
    <i class="fa fa-fw fa-pie-chart"></i>
    
    <h4 class="list-group-item-heading">
      Relat�rios
    </h4>
    <p class="list-group-item-text hidden-sm hidden-xs">
      Breve descri��o
    </p>
    
  </a>

</div>
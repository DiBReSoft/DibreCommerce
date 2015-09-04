<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="row">

  <div class="col-md-12 col-sm-6">

    <div id="climaContainer" class="thumbnail text-center">

      <div class="thumbnail-icon">
        <i id="climaIcone" class="fa fa-3x fa-fw"></i>
      </div>

      <div class="thumbnail-title">
        <h2 id="climaUnidade">São Paulo</h2>
      </div>

      <div class="thumbnail-description lead">

        <span id="climaDescricao" class="text-capitalize">
          --
        </span>

        <div class="row">

          <div class="col-xs-6 tooltip-bottom"
               title="Temperatura">
            <i class="fa fa-fire"></i>
            <span id="climaTemperatura">--</span>°
          </div>

          <div class="col-xs-6 tooltip-bottom"
               title="Umidade do Ar">
            <i class="fa fa-tint"></i>
            <span id="climaUmidade">--</span>%
          </div>

        </div>

      </div>

    </div>

  </div>

</div>
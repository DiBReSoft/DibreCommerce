var cep = document.querySelector("#formCep");

function consultacep(cep) {
  if (cep != "") {
    cep = cep.replace(/\D/g, "");
    url = "http://cep.correiocontrol.com.br/" + cep + ".js";
    s = document.createElement('script');
    s.setAttribute('charset', 'utf-8');
    s.src = url;
    document.querySelector('head').appendChild(s);
  }

}

function correiocontrolcep(valor) {
  var rua = document.querySelector("#formLogradouro");
  var bairro = document.querySelector("#formBairro");
  var cidade = document.querySelector("#formCidade");
  var estado = document.querySelector("#formEstado");
  var pais = document.querySelector("#formPais");
  if (valor.erro) {
    alert('CEP não encontrado');
    cep.value = "";
    rua.value = "";
    bairro.value = "";
    cidade.value = "";
    estado.value = "";
    return;
  }
  rua.value = valor.logradouro;
  bairro.value = valor.bairro;
  cidade.value = valor.localidade;
  estado.value = valor.uf;
}

//Função de carregar e-mail como Login
var email = document.getElementById("formEmail");
email.addEventListener("blur", carregaLogin);

function carregaLogin() {
  var login = document.getElementById("formLogin");
  login.value = email.value;
}


$(".calendar").datepicker({
  dateFormat: 'dd/mm/yy',
  dayNames: ['Domingo', 'Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta', 'Sábado', 'Domingo'],
  dayNamesMin: ['D', 'S', 'T', 'Q', 'Q', 'S', 'S', 'D'],
  dayNamesShort: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb', 'Dom'],
  monthNames: ['Janeiro', 'Fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'],
  monthNamesShort: ['Jan', 'Fev', 'Mar', 'Abr', 'Mai', 'Jun', 'Jul', 'Ago', 'Set', 'Out', 'Nov', 'Dez'],
  changeYear: true,
  yearRange: "1950:2000",
  autoSize: true
});
function main() {
  var btnNovo = document.querySelector("#novo");
  var cancelaNovo = document.querySelector("#cancelanovo");
  var cancelaEditar = document.querySelector("#cancelaeditar");

  cancelaEditar.addEventListener("click", editarCancela);
  btnNovo.addEventListener("click", abrirNovo);
  cancelaNovo.addEventListener("click", novoCancela);
}

function abrirNovo() {
  document.querySelector("#nevoa").style.display = "block";
  document.querySelector("#janelanovo").style.display = "block";
}

function abrirEditar(form) {
  inputs = [];
  inputs = document.querySelectorAll(".inputseditar");
  var select = document.querySelector("#selecteditar");
  var optionPizza = document.createElement("option");
  var optionPizzaDoce = document.createElement("option");
  var optionBorda = document.createElement("option");
  var optionBebida = document.createElement("option");
  var optionPromo = document.createElement("option");
  optionPizza.innerHTML = "Pizza";
  optionPizza.setAttribute("value", "PIZZA");
  optionPizzaDoce.innerHTML = "Pizza Doce";
  optionPizzaDoce.setAttribute("value", "DOCE");
  optionBorda.innerHTML = "Borda";
  optionBorda.setAttribute("value", "BORDA");
  optionBebida.innerHTML = "Bebida";
  optionBebida.setAttribute("value", "BEBIDA");
  optionPromo.innerHTML = "Promoção";
  optionPromo.setAttribute("value", "PROMOCAO");

  for (var i = 0; i < inputs.length; i++) {
    inputs[i].value = form[i].value;
  }
  if (form[4].value == 'PIZZA') {
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaDoce);
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'DOCE') {
    select.appendChild(optionPizzaDoce);
    select.appendChild(optionPizza);
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'BORDA') {
    select.appendChild(optionBorda);
    select.appendChild(optionBebida);
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaDoce);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'BEBIDA') {
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaDoce);
    select.appendChild(optionPromo);

  } else if (form[4].value == 'PROMOCAO') {
    select.appendChild(optionPromo);
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaDoce);

  } else {
    select.appendChild(optionPizza);
    select.appendChild(optionPizzaDoce);
    select.appendChild(optionPromo);
    select.appendChild(optionBebida);
    select.appendChild(optionBorda);
  }


  document.querySelector("#nevoa").style.display = "block";
  document.querySelector("#janelaeditar").style.display = "block";

  return false;
}

function novoCancela() {
  var campos = [];
  campos = document.querySelectorAll(".inputsnovo");
  for (var i = 0; i < campos.length; i++) {
    campos[i].value = '';
  }
  document.querySelector("#nevoa").style.display = "none";
  document.querySelector("#janelanovo").style.display = "none";
}

function editarCancela() {
  var myNode = document.getElementById("selecteditar");
  while (myNode.firstChild) {
    myNode.removeChild(myNode.firstChild);
}
  document.querySelector("#nevoa").style.display = "none";
  document.querySelector("#janelaeditar").style.display = "none";
}



window.addEventListener("load", main);

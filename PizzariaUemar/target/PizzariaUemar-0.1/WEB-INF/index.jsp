<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <link rel="stylesheet" href="./_resources/estiloPaginaInicial.css">
        <link href="https://fonts.googleapis.com/css?family=Hind" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Pacifico" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Marck+Script" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Caveat|Vast+Shadow" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Baloo+Da" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Sans" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lusitana" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Jaldi" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Courgette" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Encode+Sans+Semi+Expanded" rel="stylesheet">
        <link rel="shortcut icon" href="./_imagens/favicon.ico" />
        <script type="text/javascript" src="./_resources/domPaginaInicial.js"></script>
        <title>Pizzaria Uemar</title>
    </head>
    <body>
        <section id="principal">
          <div id="menu">
            <ul>
              <li><button type="button" id="buttoncontato">Contato</button></li>
              <li><button type="button" id="buttonlocalizacao">Localização</button></li>
              <li><button type="button" id="buttoncardapio">Cardápio</button></li>
              <li><button type="button" id="buttonpromocoes">Promoções</button></li>
              <li><button type="button" id="buttonnossacasa">A Uemar</button></li>
              <li><button type="button" id="buttonhome">Home</button></li>
            </ul>
          </div>

            <div id="firstimg">
              <img src="_imagens/logoUemar.jpg" alt="logo da pizzaria uemar">
            </div>

            <div class="sessoes" id="nossacasa">
              <h1 class="titulos">A Uemar</h1>
              <hr/>
              <div id="fachada">
                <img src="_imagens/img1.jpg">
              </div>
              <p>Há na pizza algo que une, cativa, fascina, talvez porque nasceu da criatividade de gente simples, para ser saboreada com as mãos: sem preconceitos ou etiquetas. <br/>
                Embora haja pizzas individuais, ela é um prato para ser consumido em grupo, estimulando a alegria e a amizade.</p>
            </div>

            <div class="sessoes" id="sessaopromocoes">
              <h1 class="titulos">Promoções</h1>
              <hr/>
              <c:forEach var="promo" items="${promocoes}">
                <div class="paineispromo">
                  <h3>${promo.nome}</h3>
                  <p>${promo.descricao}</p>
                  <p>${promo.preco}</p>
                </div>
              </c:forEach>
            </div>

            <div class="sessoes" id="sessaocardapio">
                <h1 class="titulos">Cardápio</h1>
                <hr/>
                <button id="abrepizzas" type="button" name="abrepizzas">Abrir Pizzas</button>
                <div class="mostrarpizzas">
                    <button class="buttonsfecharpizzas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="numeropizza">Número</th>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Ingredientes</th>
                            <th id="precopizza">Grande</th>
                            <th id="precobroto">Broto</th>
                        </tr>
                        <c:forEach var="pizza" items="${pizzas}">
                            <tr>
                                <td class="celulas">${pizza.codigo}</td>
                                <td class="celulas">${pizza.nome}</td>
                                <td>${pizza.descricao}</td>
                                <td class="celulas">${pizza.preco}</td>
                                <td class="celulas">${pizza.precoBroto}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharpizzas" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abrepizzasdoces" type="button" name="abrepizzasdoces">Abrir Pizzas Doces</button>
                <div class="mostrarpizzasdoces">
                    <button class="buttonsfecharpizzasdoces" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="numeropizza">Número</th>
                            <th id="saborpizza">Sabor</th>
                            <th id="descricao">Ingredientes</th>
                            <th id="precopizza">Grande</th>
                            <th id="precobroto">Broto</th>
                        </tr>
                        <c:forEach var="doce" items="${doces}">
                            <tr>
                                <td class="celulas">${doce.codigo}</td>
                                <td class="celulas">${doce.nome}</td>
                                <td>${doce.descricao}</td>
                                <td class="celulas">${doce.preco}</td>
                                <td class="celulas">${doce.precoBroto}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharpizzasdoces" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abrebordas" type="button" name="abrebordas">Abrir Bordas</button>

                <div class="mostrarbordas">
                    <button class="buttonsfecharbordas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saborpizza">Sabor</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="borda" items="${bordas}">
                            <tr>
                                <td class="celulas">${borda.nome}</td>
                                <td class="celulas">${borda.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharbordas" type="button" name="fecharcardapio">Fechar</button>
                </div>

                <button id="abrebebidas" type="button" name="abrebebidas">Abrir Bebidas</button>

                <div class="mostrarbebidas">
                    <button class="buttonsfecharbebidas" type="button" name="fecharcardapio">Fechar</button>
                    <table>
                        <tr>
                            <th id="saborpizza">Bebida</th>
                            <th id="descricao">Tamanho</th>
                            <th id="precopizza">Preço</th>
                        </tr>
                        <c:forEach var="drinks" items="${bebidas}">
                            <tr>
                                <td class="celulas">${drinks.nome}</td>
                                <td>${drinks.descricao}</td>
                                <td class="celulas">${drinks.preco}</td>
                            </tr>
                        </c:forEach>
                    </table>
                    <button class="buttonsfecharbebidas" type="button" name="fecharcardapio">Fechar</button>
                </div>
            </div>

            <div class="sessoes" id="sessaolocalizacao">
                <h1 class="titulos">Localização</h1>
                <hr/>
                <p>Rua Santo Alberico Crescitelli, 60 - Vila Missionária, São Paulo - SP<br/>
                    em à Paróquia São Francisco Xavier.</p>
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3653.6167850134857!2d-46.6503017854582!3d-23.689658584619345!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x94ce45150db9fbf1%3A0x8e1d8177fa6adea5!2sPizzaria+e+Bebidas+Uemar!5e0!3m2!1spt-BR!2sbr!4v1503859105457" allowfullscreen></iframe>
              </div>
            <footer id="sessaocontato">
              <div class="sessoes">
                <h1 class="titulos">Contato</h1>
                <hr/>
                <h2><a href="tel:01138528733">3852-8733</a><br/>
                    <a href="tel:01156126481">5612-6481</a><br/>
                    <a href="tel:01156213815">5621-3815</a></h2>
                <p>De Terça à Domingo das 18h às 00h</p>
                <p id="copyright">Copyright (c) Pizzaria Uemar Copyright Holder All Rights Reserved.<br/>
                Developed by Jonata Hessa.</p>
              </div>
            </footer>
        </section>
    </body>
</html>

*** Settings ***
Resource          ../resource/Resource.robot
Test Setup        Abrir navegador
Test Teardown     Fechar navegador

*** Test Case ***
Pesquisar produto 01
  Verificar se a página foi carregada
  Digitar o produto "Smartphone Samsung Galaxy A70"
  Clicar no botão pesquisar
  Conferir se o produto Smartphone Samsung Galaxy A70 foi localizado

Pesquisar produto 02
  Verificar se a página foi carregada
  Digitar o produto "Smartphone Motorola One Vision"
  Clicar no botão pesquisar
  Conferir se o produto Smartphone Motorola One Vision foi localizado

Pesquisar produto 03
  Verificar se a página foi carregada
  Digitar o produto "Smartphone Xiaomi Redmi Note 9"
  Clicar no botão pesquisar
  Conferir se o produto Smartphone Xiaomi Redmi Note 9 foi localizado

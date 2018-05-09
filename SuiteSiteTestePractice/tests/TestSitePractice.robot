*** Settings ***
Resource         ../resource/Resource.robot
Test Setup       Abrir navegador
# Test Teardown    Fechar navegador




*** Test Case ***
Caso de Teste 01: Pesquisar produto existente
  Acessar a página home do site
  Digitar o nome de produto "Blouse" no campo de pesquisa
  Clicar no botão de pesquisar
  Conferir se o produto "Blouse" foi listado no site
#
# Caso de Teste 02: Pesquisar produto não existente
#   Acessar página home do site
#   Digitar o nome de produto "itemNãoExistente" no campo de pesquisa
#   Clicar no botão de pesquisar
#   Conferir mensagem de erro "No results were found for your search "itemNãoExistente""

# *** Keywords ***

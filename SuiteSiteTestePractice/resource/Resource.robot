*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${BROWSER}  firefox
${URL}      http://automationpractice.com

*** Keywords ***
### Setup e Teardown
Abrir navegador
  Open Browser    about:blank   ${BROWSER}

Fechar navegador
  Close Browser

### Passo-a-Passo
Acessar a página home do site
  Go To    http://automationpractice.com
  Title Should Be   My Store

Digitar o nome de produto "${PRODUTO}" no campo de pesquisa
  Input Text    id=search_query_top    ${PRODUTO}

Clicar no botão de pesquisar
  Click Element    name=submit_search

Conferir se o produto "Blouse" foi listado no site
  Page Should Contain    Blouse

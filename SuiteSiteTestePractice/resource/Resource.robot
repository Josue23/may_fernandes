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

*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${URL}    http://automationpractice.com
${BROWSER}    ff


*** Keywords ***
#### Setups E Teardown
Abrir Navegador
    Open Browser  ${URL}  ${BROWSER}  

Fechar Navegador
    Close Browser

#### Passo a Passo
Conferir se a pagina home foi exibida
    Title Should Be    My Store

Digitar o nome do protudo "${PRODUTO}" na pesquisa
    Input Text    name=search_query    ${PRODUTO}

Clicar no botao pesquisar
    Click Button   XPath= //*[@id="searchbox"]/button

#Conferir se o Produto "Blouse" foi listado
    Wait Until Element Is Visible    xpath= //*[@id="center_column"]/h1/span[1]
    
Conferir se o Produto "${PRODUTO}" foi listado
    Element Text Should Be   xpath=/html/body/div/div[2]/div/div[3]/div[2]/ul/li/div/div[2]/h5/a  ${Produto}

Conferir mensagem de erro "${MENSSAGEM}"
    Element Text Should Be    xpath=/html/body/div/div[2]/div/div[3]/div[2]/p    ${MENSSAGEM}
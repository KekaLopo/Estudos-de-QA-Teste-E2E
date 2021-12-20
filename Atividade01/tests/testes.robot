*** Settings ***   
Resource    ../resource/Resource.robot
Test Setup    Abrir Navegador
Test Teardown    Fechar Navegador



*** Test Cases ***
Caso de Teste 01: pesquisar produto existente
    Conferir se a pagina home foi exibida
    Digitar o nome do protudo "Blouse" na pesquisa
    Clicar no botao pesquisar 
    Conferir se o Produto "Blouse" foi listado

Caso de Teste 02: pesquisar produto nao existente
    Conferir se a pagina home foi exibida
    Digitar o nome do protudo "itemNaoExistente" na pesquisa
    Clicar no botao pesquisar 
    Conferir mensagem de erro "No results were found for your search "itemNaoExistente""

*** Keywords ***
